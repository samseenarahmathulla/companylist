class ChangeColumnEmployeesNoOfEmployeesInCompaniestable < ActiveRecord::Migration
  def change
    rename_column :companies, :employees, :number_of_employees
  end
end
