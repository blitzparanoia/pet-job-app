class Job < ApplicationRecord
  validates :title, presence: true
  validates :position, presence: true
  validates :description, presence: true

  belongs_to :user
  belongs_to :company

  #add company via asscoiation
end
