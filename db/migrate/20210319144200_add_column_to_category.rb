class AddColumnToCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :icon, :string
  end
end
