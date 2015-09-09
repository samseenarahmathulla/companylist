class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :company_hq
      t.string :ceo
      t.integer :employees
      t.integer :revenue
      t.integer :stock_position
      t.string :status
      
      t.timestamps null: false
    end
  end
end



