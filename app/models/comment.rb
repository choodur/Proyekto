class Comment < ActiveRecord::Base
	belongs_to :user,  :foreign_key => :user_id
	belongs_to :ticket,  :foreign_key => :ticket_id
	
	validates_presence_of :body, :user_id, :ticket_id
end
