class CreateStatistics < ActiveRecord::Migration[7.1]
  def change
    create_table :statistics do |t|
      t.integer :cid
      t.string :name
      t.integer :val
      t.integer :cyear
      t.string :org
      t.string :title
      t.string :cc
      t.integer :clvl
      t.integer :hitterg
      t.integer :hittergs 
      t.integer :pa
      t.integer :hitterab
      t.integer :h
      t.integer :hitter1b
      t.integer :hitter2b
      t.integer :hitter3b
      t.integer :hitterhr
      t.integer :rbi
      t.integer :hitterr
      t.integer :hitterbb
      t.integer :hitteribb
      t.integer :hitterhp
      t.integer :hittersh
      t.integer :hittersf
      t.integer :ci
      t.integer :so
      t.integer :gidp
      t.integer :hittertb 
      t.float :'pi/pa'
      t.integer :sb
      t.integer :cs
      t.integer :pitcherg
      t.integer :pitchergs
      t.integer :w
      t.integer :l
      t.integer :svo
      t.integer :sv
      t.integer :bs
      t.integer :hld
      t.integer :sd
      t.integer :md
      t.float :ip
      t.integer :bf
      t.integer :pitcherab
      t.integer :ha
      t.integer :pitcher1b
      t.integer :pitcher2b
      t.integer :pitcher3b
      t.integer :pitcherhr
      t.integer :pitchertb
      t.integer :pitcherr
      t.integer :er
      t.integer :pitcherbb
      t.integer :pitcheribb
      t.integer :k
      t.integer :pitcherhp
      t.float :era
      t.integer :pitchersh
      t.integer :pitchersf
      t.integer :qs
      t.integer :pos
      t.integer :tc
      t.integer :a
      t.integer :po
      t.integer :e
      t.integer :dp
      t.float :pct
      t.float :rng
      t.float :zr
      t.float :eff

      t.timestamps
    end
  end
end