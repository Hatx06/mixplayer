class AddPlace < ActiveRecord::Migration[5.2]
  def change
      add_column :posts, :place_id, :integer
  end
end
