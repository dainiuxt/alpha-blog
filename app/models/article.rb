class Article < ApplicationRecord
	belongs_to :user
	validates :title, presence: true, length: { minimum: 1, maximum: 123 }
	validates :description, presence: true, length: { minimum: 1, maximum: 500 }
end