class Player < ApplicationRecord
	has_many :statistics
	self.primary_key = :cid
end
