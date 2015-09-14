class Blog < ActiveRecord::Base
	belongs_to :user
	has_many :comments

	validates :title, presence: true
	validates :blog_entry, presence: true
end
