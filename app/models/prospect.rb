class Prospect < ActiveRecord::Base
	belongs_to :stage
	belongs_to :user, class_name: 'User'

	before_create :assign_stage
	before_save :make_as_customer

	validates_presence_of :full_name, :email, :phone, :location, :stage_id, :managed_by
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates_numericality_of :phone
	validates_uniqueness_of :phone, :email
	validates :phone, length: { is: 10 }

	private
		def assign_stage
			self.stage_id = Stage.find_by(name: "New Opportunity").id
		end

		def make_as_customer
			if self.stage_id == Stage.find_by(name: "Won").id
				Customer.create(full_name: self.full_name, email: self.email, phone: self.phone, location: self.location, managed_by: self.managed_by)
			end
		end
end
