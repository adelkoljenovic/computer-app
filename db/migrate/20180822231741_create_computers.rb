class CreateComputers < ActiveRecord::Migration[5.2]
  def change
    create_table :computers do |t|
      t.string :harddrive
      t.string :ram
      t.integer :price

      t.timestamps
    end
  end
end
