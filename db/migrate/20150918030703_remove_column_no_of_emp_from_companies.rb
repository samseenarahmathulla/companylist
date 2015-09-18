class RemoveColumnNoOfEmpFromCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :number_of_employees
  end
end
