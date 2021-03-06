class User < ApplicationRecord
	before_save { self.email = email.downcase }
	has_many :articles, dependent: :destroy
	validates :username, presence: true,
	uniqueness: { case_sensitive: false },
	length: { minimum: 2, maximum: 51 }
	VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true,
	uniqueness: { case_sensitive: false },
	length: { maximum: 110 },
	format: { with: VALID_EMAIL }
	has_secure_password
end