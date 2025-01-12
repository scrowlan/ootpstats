class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players, id: false, primary_key: :cid do |t|
      t.string :Card_Title
      t.integer :cid, index: { unique: true }
      t.integer :Card_Value
      t.integer :Card_Type
      t.integer :Card_Sub_Type
      t.integer :Year
      t.string :Peak
      t.string :Team
      t.string :LastName
      t.string :FirstName
      t.string :NickName
      t.integer :UniformNumber
      t.integer :DayOB
      t.integer :MonthOB
      t.integer :YearOB
      t.integer :Bats
      t.integer :Throws
      t.integer :Position
      t.integer :Pitcher_Role
      t.integer :Contact
      t.integer :Gap
      t.integer :Power
      t.integer :Eye
      t.integer :Avoid_Ks
      t.integer :BABIP
      t.integer :Contact_vL
      t.integer :Gap_vL
      t.integer :Power_vL
      t.integer :Eye_vL
      t.integer :Avoid_K_vL
      t.integer :BABIP_vL
      t.integer :Contact_vR
      t.integer :Gap_vR
      t.integer :Power_vR
      t.integer :Eye_vR
      t.integer :Avoid_K_vR
      t.integer :BABIP_vR
      t.integer :GB_Hitter_Type
      t.integer :FB_Hitter_Type
      t.integer :BattedBallType
      t.integer :Speed
      t.integer :Steal_Rate
      t.integer :Stealing
      t.integer :Baserunning
      t.integer :Sac_bunt
      t.integer :Bunt_for_hit
      t.integer :Stuff
      t.integer :Movement
      t.integer :Control
      t.integer :pHR
      t.integer :pBABIP
      t.integer :Stuff_vL
      t.integer :Movement_vL
      t.integer :Control_vL
      t.integer :pHR_vL
      t.integer :pBABIP_vL
      t.integer :Stuff_vR
      t.integer :Movement_vR
      t.integer :Control_vR
      t.integer :pHR_vR
      t.integer :pBABIP_vR
      t.integer :Fastball
      t.integer :Slider
      t.integer :Curveball
      t.integer :Changeup
      t.integer :Cutter
      t.integer :Sinker
      t.integer :Splitter
      t.integer :Forkball
      t.integer :Screwball
      t.integer :Circlechange
      t.integer :Knucklecurve
      t.integer :Knuckleball
      t.integer :Stamina
      t.integer :Hold
      t.integer :GB
      t.string :Velocity
      t.integer :Arm_Slot
      t.integer :Height
      t.integer :Infield_Range
      t.integer :Infield_Error
      t.integer :Infield_Arm
      t.integer :DP
      t.integer :CatcherAbil
      t.integer :CatcherFrame
      t.integer :Catcher_Arm
      t.integer :OF_Range
      t.integer :OF_Error
      t.integer :OF_Arm
      t.integer :Pos_Rating_P
      t.integer :Pos_Rating_C
      t.integer :Pos_Rating_1B
      t.integer :Pos_Rating_2B
      t.integer :Pos_Rating_3B
      t.integer :Pos_Rating_SS
      t.integer :Pos_Rating_LF
      t.integer :Pos_Rating_CF
      t.integer :Pos_Rating_RF
      t.integer :LearnC
      t.integer :Learn1B
      t.integer :Learn2B
      t.integer :Learn3B
      t.integer :LearnSS
      t.integer :LearnLF
      t.integer :LearnCF
      t.integer :LearnRF
      t.integer :era
      t.integer :tier
      t.integer :MissionValue
      t.integer :limit
      t.integer :owned
      t.string :brefid
      t.integer :Buy_Order
      t.integer :High
      t.integer :Sell_Order_Low
      t.integer :Last_10_Price
      t.integer :Buy_Order_High_CC
      t.integer :Sell_Order_Low_CC
      t.integer :Last_10_Price_CC
      t.integer :date 

      t.timestamps
    end
  end
end