class Stage < ActiveRecord::Base
	has_many :prospects

	validates_presence_of :name, :description, :interest_level
	validates_uniqueness_of :name
end
