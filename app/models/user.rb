class User < ApplicationRecord
  has_many :jobs
  has_many :companies, through: :jobs

  has_secure_password
  validates :username, :email, presence: true
 validates :username, :email, uniqueness: true


end
