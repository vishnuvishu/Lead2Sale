class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :invitable,
         :recoverable, :rememberable, :trackable, :validatable

   belongs_to :role
   has_many :prospects
   has_many :customers, foreign_key: :managed_by

   def role? role
        self.role.name.include? role
   end

end
