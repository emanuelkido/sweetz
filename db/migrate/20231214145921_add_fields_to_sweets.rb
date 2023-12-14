class AddFieldsToSweets < ActiveRecord::Migration[7.1]
  def change
    add_column :sweets, :validity, :datetime
    add_column :sweets, :description, :text
  end
end
