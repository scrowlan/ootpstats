class TournamentImportService
  require 'csv'

  def call(file)
    opened_file = File.open(file)
    options = { headers: true, col_sep: ',' }
    CSV.foreach(opened_file, **options) do |row|

      # map the CSV columns to your database columns
      tournament_hash = {}
      tournament_hash[:title] = row['Title']
      tournament_hash[:start] = row['Start']
      tournament_hash[:mode] = row['Mode']
      tournament_hash[:entry_fee] = row['Entry Fee']
      tournament_hash[:dh] = row['DH']
      tournament_hash[:park] = row['Park']
      tournament_hash[:year] = row['Year']
      tournament_hash[:cap] = row['Cap']
      tournament_hash[:variant_limit] = row['Variant Limit']

      Tournament.find_or_create_by!(tournament_hash)
      # for performance, you could create a separate job to import each user
      # CsvImportJob.perform_later(tournament_hash)
    end
  end
end