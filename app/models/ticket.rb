class Ticket < ActiveRecord::Base
  validates_presence_of :name, :description, :status, :priority, :tracker
end
