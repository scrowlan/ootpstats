class RunEnvironment < ApplicationRecord
	has_many :tournament_tiers, foreign_key: :year, inverse_of: :run_environment
	self.primary_key = :year
end
