class User < ActiveRecord::Base
	has_many :comments
	has_many :blogs

	validates :name, presence: true
	validates :email, presence: true
end
