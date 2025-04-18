class Player < ApplicationRecord
	has_many :statistics, foreign_key: 'cid', inverse_of: :player
	has_many :tournament_tiers, :through => :statistics
	self.primary_key = :cid
end
