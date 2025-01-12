class Statistic < ApplicationRecord
	belongs_to :player, foreign_key: 'cid'
	belongs_to :tournament
end
