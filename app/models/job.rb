class Job < ApplicationRecord
  validates :title, presence: true
  validates :position, presence: true
  validates :description, presence: true

  #add company via asscoiation 
end
