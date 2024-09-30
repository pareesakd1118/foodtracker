class CreateEntries < ActiveRecord::Migration[7.2]
  def change
    create_table :entries do |t|
      t.string :meal_type
      t.integer :calories
      t.integer :proteins, default: 0
      t.integer :carbohydrates, default: 0
      t.integer :fats

      t.timestamps
    end
  end
end
