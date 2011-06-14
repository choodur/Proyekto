class Ticket < ActiveRecord::Base
	belongs_to :user,  :foreign_key => :created_by
	has_many :comments, :dependent => :destroy

  validates_presence_of :name, :description, :status, :priority, :tracker, :created_by
end
