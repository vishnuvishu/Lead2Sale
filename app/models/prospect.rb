class Prospect < ActiveRecord::Base
	belongs_to :stage
	belongs_to :user, class_name: 'User'


	before_create :assign_stage
	before_save :make_as_customer

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
