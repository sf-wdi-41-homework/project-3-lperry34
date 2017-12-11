class User < ApplicationRecord
  has_secure_password
  has_many :articles
  validates_uniqueness_of :email
  validates :password, length: { minimum: 6 }
end
