class Employee < ActiveRecord::Base
  belongs_to :company
  
  validates :name, presence: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => [:create, :update]
  validates_numericality_of :age

  
  self.per_page = 5
end
