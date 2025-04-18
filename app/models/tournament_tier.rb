class TournamentTier < ApplicationRecord
	belongs_to :run_environment, foreign_key: :year, inverse_of: :tournament_tiers
	has_many :statistics
	has_many :players, through: :statistics

end
