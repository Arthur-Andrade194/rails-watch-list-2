class AddCityToLists < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :city, :string
  end
end
