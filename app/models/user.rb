class User < ActiveRecord::Base
  has_one :role
  has_many :comments
  has_many :tickets
  has_and_belongs_to_many :projects
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :middle_name, :last_name, :user_name, :birthdate, :admin
  
  def full_name
    "#{self.last_name.capitalize}, #{self.first_name.capitalize} #{}"
  end
end
