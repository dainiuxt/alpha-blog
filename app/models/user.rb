class User < ApplicationRecord
	has_many :articles
	validates :username, presence: true,
	uniqueness: { case_sensitive: false },
	length: { minimum: 2, maximum: 51 }
	VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true,
	uniqueness: { case_sensitive: false },
	length: { maximum: 110 },
	format: { with: VALID_EMAIL }
end