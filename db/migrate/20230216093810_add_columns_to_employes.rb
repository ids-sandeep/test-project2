class AddColumnsToEmployes < ActiveRecord::Migration[7.0]
  def change
    add_column :employes, :gender, :string
    add_column :employes, :hobby, :string
    add_column :employes, :description, :string
  end
end
