class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :middle_name, :last_name, :user_name, :birthdate, :admin, :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

	has_many :tickets, :dependent => :destroy
  has_many :comments, :dependent => :destroy

  validates_presence_of :first_name, :middle_name, :last_name, :user_name, :email
  
  def full_name
    "#{self.last_name.capitalize}, #{self.first_name.capitalize} #{self.middle_name[0].capitalize}."
  end
end
