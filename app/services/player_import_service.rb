class PlayerImportService
  require 'csv'

  def call(file)
    opened_file = File.open(file)
    options = { headers: true, col_sep: ',' }
    CSV.foreach(opened_file, **options) do |row|

      # map the CSV columns to your database columns
      player_import_hash = {}
      player_import_hash[:Card_Title] = row['Card Title']
      player_import_hash[:cid] = row['Card ID']
      player_import_hash[:Card_Value] = row['Card Value']
      player_import_hash[:Card_Type] = row['Card Type']
      player_import_hash[:Card_Sub_Type] = row['Card Sub Type']
      player_import_hash[:Year] = row['Year']
      player_import_hash[:Peak] = row['Peak']
      player_import_hash[:Team] = row['Team']
      player_import_hash[:LastName] = row['LastName']
      player_import_hash[:FirstName] = row['FirstName']
      player_import_hash[:NickName] = row['NickName']
      player_import_hash[:UniformNumber] = row['UniformNumber']
      player_import_hash[:DayOB] = row['DayOB']
      player_import_hash[:MonthOB] = row['MonthOB']
      player_import_hash[:YearOB] = row['YearOB']
      player_import_hash[:Bats] = row['Bats']
      player_import_hash[:Throws] = row['Throws']
      player_import_hash[:Position] = row['Position']
      player_import_hash[:Pitcher_Role] = row['Pitcher Role']
      player_import_hash[:Contact] = row['Contact']
      player_import_hash[:Gap] = row['Gap']
      player_import_hash[:Power] = row['Power']
      player_import_hash[:Eye] = row['Eye']
      player_import_hash[:Avoid_Ks] = row['Avoid Ks']
      player_import_hash[:BABIP] = row['BABIP']
      player_import_hash[:Contact_vL] = row['Contact vL']
      player_import_hash[:Gap_vL] = row['Gap vL']
      player_import_hash[:Power_vL] = row['Power vL']
      player_import_hash[:Eye_vL] = row['Eye vL']
      player_import_hash[:Avoid_K_vL] = row['Avoid K vL']
      player_import_hash[:BABIP_vL] = row['BABIP vL']
      player_import_hash[:Contact_vR] = row['Contact vR']
      player_import_hash[:Gap_vR] = row['Gap vR']
      player_import_hash[:Power_vR] = row['Power vR']
      player_import_hash[:Eye_vR] = row['Eye vR']
      player_import_hash[:Avoid_K_vR] = row['Avoid K vR']
      player_import_hash[:BABIP_vR] = row['BABIP vR']
      player_import_hash[:GB_Hitter_Type] = row['GB Hitter Type']
      player_import_hash[:FB_Hitter_Type] = row['FB Hitter Type']
      player_import_hash[:BattedBallType] = row['BattedBallType']
      player_import_hash[:Speed] = row['Speed']
      player_import_hash[:Steal_Rate] = row['Steal Rate']
      player_import_hash[:Stealing] = row['Stealing']
      player_import_hash[:Baserunning] = row['Baserunning']
      player_import_hash[:Sac_bunt] = row['Sac bunt']
      player_import_hash[:Bunt_for_hit] = row['Bunt for hit']
      player_import_hash[:Stuff] = row['Stuff']
      player_import_hash[:Movement] = row['Movement']
      player_import_hash[:Control] = row['Control']
      player_import_hash[:pHR] = row['pHR']
      player_import_hash[:pBABIP] = row['pBABIP']
      player_import_hash[:Stuff_vL] = row['Stuff vL']
      player_import_hash[:Movement_vL] = row['Movement vL']
      player_import_hash[:Control_vL] = row['Control vL']
      player_import_hash[:pHR_vL] = row['pHR vL']
      player_import_hash[:pBABIP_vL] = row['pBABIP vL']
      player_import_hash[:Stuff_vR] = row['Stuff vR']
      player_import_hash[:Movement_vR] = row['Movement vR']
      player_import_hash[:Control_vR] = row['Control vR']
      player_import_hash[:pHR_vR] = row['pHR vR']
      player_import_hash[:pBABIP_vR] = row['pBABIP vR']
      player_import_hash[:Fastball] = row['Fastball']
      player_import_hash[:Slider] = row['Slider']
      player_import_hash[:Curveball] = row['Curveball']
      player_import_hash[:Changeup] = row['Changeup']
      player_import_hash[:Cutter] = row['Cutter']
      player_import_hash[:Sinker] = row['Sinker']
      player_import_hash[:Splitter] = row['Splitter']
      player_import_hash[:Forkball] = row['Forkball']
      player_import_hash[:Screwball] = row['Screwball']
      player_import_hash[:Circlechange] = row['Circlechange']
      player_import_hash[:Knucklecurve] = row['Knucklecurve']
      player_import_hash[:Knuckleball] = row['Knuckleball']
      player_import_hash[:Stamina] = row['Stamina']
      player_import_hash[:Hold] = row['Hold']
      player_import_hash[:GB] = row['GB']
      player_import_hash[:Velocity] = row['Velocity']
      player_import_hash[:Arm_Slot] = row['Arm Slot']
      player_import_hash[:Height] = row['Height']
      player_import_hash[:Infield_Range] = row['Infield Range']
      player_import_hash[:Infield_Error] = row['Infield Error']
      player_import_hash[:Infield_Arm] = row['Infield Arm']
      player_import_hash[:DP] = row['DP']
      player_import_hash[:CatcherAbil] = row['CatcherAbil']
      player_import_hash[:CatcherFrame] = row['CatcherFrame']
      player_import_hash[:Catcher_Arm] = row['Catcher Arm']
      player_import_hash[:OF_Range] = row['OF Range']
      player_import_hash[:OF_Error] = row['OF Error']
      player_import_hash[:OF_Arm] = row['OF Arm']
      player_import_hash[:Pos_Rating_P] = row['Pos Rating P']
      player_import_hash[:Pos_Rating_C] = row['Pos Rating C']
      player_import_hash[:Pos_Rating_1B] = row['Pos Rating 1B']
      player_import_hash[:Pos_Rating_2B] = row['Pos Rating 2B']
      player_import_hash[:Pos_Rating_3B] = row['Pos Rating 3B']
      player_import_hash[:Pos_Rating_SS] = row['Pos Rating SS']
      player_import_hash[:Pos_Rating_LF] = row['Pos Rating LF']
      player_import_hash[:Pos_Rating_CF] = row['Pos Rating CF']
      player_import_hash[:Pos_Rating_RF] = row['Pos Rating RF']
      player_import_hash[:LearnC] = row['LearnC']
      player_import_hash[:Learn1B] = row['Learn1B']
      player_import_hash[:Learn2B] = row['Learn2B']
      player_import_hash[:Learn3B] = row['Learn3B']
      player_import_hash[:LearnSS] = row['LearnSS']
      player_import_hash[:LearnLF] = row['LearnLF']
      player_import_hash[:LearnCF] = row['LearnCF']
      player_import_hash[:LearnRF] = row['LearnRF']
      player_import_hash[:era] = row['era']
      player_import_hash[:tier] = row['tier']
      player_import_hash[:MissionValue] = row['MissionValue']
      player_import_hash[:limit] = row['limit']
      player_import_hash[:owned] = row['owned']
      player_import_hash[:brefid] = row['brefid']
      player_import_hash[:Buy_Order] = row['Buy Order']
      player_import_hash[:High] = row['High']
      player_import_hash[:Sell_Order_Low] = row['Sell Order Low']
      player_import_hash[:Last_10_Price] = row['Last 10 Price']
      player_import_hash[:Buy_Order_High_CC] = row['Buy Order High(CC)']
      player_import_hash[:Sell_Order_Low_CC] = row['Sell Order Low(CC)']
      player_import_hash[:Last_10_Price_CC] = row['Last 10 Price(CC)']
      player_import_hash[:date] = row['date']

      Player.find_or_create_by!(player_import_hash)
      # for performance, you could create a separate job to import each user
      # CsvImportJob.perform_later(run_environment_hash)
    end
  end
end