class User < ApplicationRecord
	has_many :products, dependent: :destroy
	has_many :bids, dependent: :destroy


	validates :name, presence: true
	validates_presence_of :email_address, message: 'you need to add an email address'
	validates :email_address, uniqueness: {case_sensitive: false, message: 'this email has been used already'}
end
