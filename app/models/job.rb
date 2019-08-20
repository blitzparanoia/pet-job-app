class Job < ApplicationRecord
  belongs_to :user
  belongs_to :company
  
  validates :title, presence: true
  validates :position, presence: true
  validates :description, presence: true



  #add company via asscoiation
end
