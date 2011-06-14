class Ticket < ActiveRecord::Base
	belongs_to :user,  :foreign_key => :created_by
	has_many :comments, :dependent => :destroy

  validates_presence_of :name, :description, :status, :priority, :tracker, :created_by
  
	def self.search(date, status, priority)
		find(:all, :conditions => ['created_at LIKE ? and status LIKE ? and priority LIKE ?', "%#{date}%", "%#{status}%", "%#{priority}%"])
	end
end
