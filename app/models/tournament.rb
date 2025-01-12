class Tournament < ApplicationRecord
	belongs_to :run_environment, foreign_key: :year
	has_many :statistics
end
