class CreateHomes < ActiveRecord::Migration[7.0]
  def change
    create_table :homes do |t|
      t.string :name
      t.string :class
      t.string :age

      t.timestamps
    end
  end
end
