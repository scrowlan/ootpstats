class TournamentTierImportService
  require 'csv'

  def call(file)
    opened_file = File.open(file)
    options = { headers: true, col_sep: ',' }
    CSV.foreach(opened_file, **options) do |row|

      # map the CSV columns to your database columns
      tournament_tier_hash = {}
      tournament_tier_hash[:title] = row['Title']
      tournament_tier_hash[:start] = row['Start']
      tournament_tier_hash[:mode] = row['Mode']
      tournament_tier_hash[:entry_fee] = row['Entry Fee']
      tournament_tier_hash[:dh] = row['DH']
      tournament_tier_hash[:park] = row['Park']
      tournament_tier_hash[:year] = row['Year']
      tournament_tier_hash[:cap] = row['Cap']
      tournament_tier_hash[:variant_limit] = row['Variant Limit']

      TournamentTier.find_or_create_by!(tournament_tier_hash)
      # for performance, you could create a separate job to import each user
      # CsvImportJob.perform_later(tournament_hash)
    end
  end
end