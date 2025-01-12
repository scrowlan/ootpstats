class StatisticImportService
  require 'csv'

  def call(file, tournament_id)
    opened_file = File.open(file)
    options = { headers: ['cid', 'name', 'val', 'cyear', 'org', 'title', 'cc', 'clvl', 'hitterg', 'hittergs', 'pa', 'hitterab', 'h', 'hitter1b', 'hitter2b', 'hitter3b', 'hitterhr', 'rbi', 'hitterr', 'hitterbb', 'hitteribb', 'hitterhp', 'hittersh', 'hittersf', 'ci', 'so', 'gidp', 'hittertb', 'pi/pa', 'sb', 'cs', 'pitcherg', 'pitchergs', 'w', 'l', 'svo', 'sv', 'bs', 'hld', 'sd', 'md', 'ip', 'bf', 'pitcherab', 'ha', 'pitcher1b', 'pitcher2b', 'pitcher3b', 'pitcherhr', 'pitchertb', 'pitcherr', 'er', 'pitcherbb', 'pitcheribb', 'k', 'pitcherhp', 'era', 'pitchersh', 'pitchersf', 'qs', 'pos', 'tc', 'a', 'po', 'e', 'dp', 'pct', 'rng', 'zr', 'eff', 'tournament_id'], skip_lines: "CID", col_sep: ',' }



    CSV.foreach(opened_file, **options) do |row|

      statistic = Statistic.new row.to_hash
      statistic.tournament_id = tournament_id

      statistic.save!
      # for performance, you could create a separate job to import each user
      # CsvImportJob.perform_later(tournament_hash)
    end
  end
end