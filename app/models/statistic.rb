class Statistic < ApplicationRecord
	belongs_to :player, foreign_key: 'cid', inverse_of: :statistics
	belongs_to :tournament
end
