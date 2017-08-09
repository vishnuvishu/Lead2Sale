class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :invitable,
         :rememberable, :trackable, :validatable

  belongs_to :role
  has_many :prospects, foreign_key: :managed_by
  has_many :customers, foreign_key: :managed_by

  validates_presence_of :full_name, :phone, :role_id
  validates_numericality_of :phone
  validates_uniqueness_of :phone
  validates :phone, length: { is: 10 }
  
  def role? role
      self.role.name == role
  end

  def password_required?
    false
  end

end
