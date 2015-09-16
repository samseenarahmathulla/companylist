class Company < ActiveRecord::Base
  has_many :employees, dependent: :destroy
  validates :company_name, presence: true
end
