class Ticket < ActiveRecord::Base
  belongs_to :project
  has_many :comments

  validates_presence_of :name, :description, :status, :priority, :tracker
end
