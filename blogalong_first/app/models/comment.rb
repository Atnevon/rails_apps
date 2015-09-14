class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :blog

	validates :name, presence: true
	validates :comment_text, presence: true
end
