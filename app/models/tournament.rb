class Tournament < ApplicationRecord
	belongs_to :run_environment, foreign_key: :year, inverse_of: :tournaments
	has_many :statistics
	has_many :players, through: :statistics

end
