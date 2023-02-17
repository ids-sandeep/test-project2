class AddSalaryAndPositionToEmployes < ActiveRecord::Migration[7.0]
  def change
    add_column :employes, :salary, :decimal
    add_column :employes, :position, :string
  end
end
