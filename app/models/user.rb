class User < ApplicationRecord
  has_many :posts
  has_many :comments
  
  validates :name, :email, presence: true, length: { minimum: 5, maximum: 20}, uniqueness: true
end
