class Vehicle < ApplicationRecord
	validates :name, presence: true, uniqueness: true, length: { in: 3..25 }
	validates :tank_size, presence: true, numericality: { greater_than: 0, less_than: 100}
	validates :odometer, presence: true,  numericality: { greater_than_or_equal_to: 0 },
							numericality: { less_than_or_equal_to: 999_999 }
	validates :year, inclusion: { in: 1900..Date.today.year + 1 },
							format: { 
								with: /(19|20)\d{2}/i, 
								message: "should be a four-digit year"
							}
end