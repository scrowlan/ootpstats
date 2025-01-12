class RunEnvironment < ApplicationRecord
	has_many :tournaments
	self.primary_key = :year
end
