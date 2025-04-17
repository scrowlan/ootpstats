class RunEnvironmentImportService
  require 'csv'

  def call(file)
    opened_file = File.open(file)
    options = { headers: true, col_sep: ',' }
    CSV.foreach(opened_file, **options) do |row|

      # map the CSV columns to your database columns
      run_environment_hash = {}
      run_environment_hash[:year] = row['YEAR']
      run_environment_hash[:contact] = row['Contact']
      run_environment_hash[:gap_power] = row['Gap Power']
      run_environment_hash[:hr_power] = row['HR Power']
      run_environment_hash[:eye] = row['Eye']
      run_environment_hash[:avoid_k] = row['Avoid K']
      run_environment_hash[:stuff] = row['Stuff']
      run_environment_hash[:movement] = row['Movement']
      run_environment_hash[:control] = row['Control']
      run_environment_hash[:speed] = row['Speed']
      run_environment_hash[:fielding] = row['Fielding']

      RunEnvironment.find_or_create_by!(run_environment_hash)
      # for performance, you could create a separate job to import each user
      # CsvImportJob.perform_later(run_environment_hash)
    end
  end
end