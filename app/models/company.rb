class Company < ActiveRecord::Base
  has_many :employees, dependent: :destroy
  validates :company_name, presence: true
  
  self.per_page = 10

end
