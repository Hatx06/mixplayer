class AddPlaces < ActiveRecord::Migration[5.2]
  def change
      add_column :places, :content, :string
      remove_column :places, :area, :string
  end
end
