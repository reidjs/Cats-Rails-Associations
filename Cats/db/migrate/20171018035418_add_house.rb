class AddHouse < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :name, null: false
      t.string :type, null: false
      t.timestamps
    end
  end
end
