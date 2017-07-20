class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :invitable,
         :recoverable, :rememberable, :trackable, :validatable

   belongs_to :role
   has_many :prospects, foreign_key: :managed_by
   has_many :customers, foreign_key: :managed_by

  validates_presence_of :full_name, :email, :phone, :role_id
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates_numericality_of :phone
  validates :phone, length: { is: 10 }

   def role? role
        self.role.name ==  role
   end

end
