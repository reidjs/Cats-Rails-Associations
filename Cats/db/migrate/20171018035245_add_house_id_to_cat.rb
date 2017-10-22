class AddHouseIdToCat < ActiveRecord::Migration[5.1]
  def change
    add_column :cats, :house_id, :integer
  end
end
