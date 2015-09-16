class Employee < ActiveRecord::Base
  belongs_to :company
  validates :name, presence: true
  
  self.per_page = 5
end
