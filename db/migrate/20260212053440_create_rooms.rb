class CreateRooms < ActiveRecord::Migration[8.1]
  def change
    create_table :rooms do |t|
      t.string :title
      t.string :token
      t.string :slug

      t.timestamps
    end
    add_index :rooms, :token, unique: true
  end
end
