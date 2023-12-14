class CreateSweets < ActiveRecord::Migration[7.1]
  def change
    create_table :sweets do |t|
      t.string :name
      t.string :origin
      t.decimal :price

      t.timestamps
    end
  end
end
