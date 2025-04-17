class StatisticImportService
  require 'csv'

  def call(file, tournament_id, tourneydate)
    opened_file = File.open(file)

    CSV.open(opened_file, 'r', headers: true) do |csv|
      headers = csv.first.headers

      # Detect and rename duplicate headers dynamically
      unique_headers = {}
      renamed_headers = headers.map do |header|
        if unique_headers[header]
          unique_headers[header] += 1
          "#{header}_#{unique_headers[header]}"  # Rename as "Hits_2"
        else
          unique_headers[header] = 1
          header  # Keep the first occurrence as is
        end
      end

      options = { headers: renamed_headers, header_converters: :symbol }

      CSV.foreach(opened_file, **options) do |row|
        statistic = Statistic.new row.to_hash
        statistic.tournament_id = tournament_id
        statistic.tourneydate = tourneydate

        statistic.save!
        # for performance, you could create a separate job to import each user
        # CsvImportJob.perform_later(tournament_hash)
      end
    end
  end
end