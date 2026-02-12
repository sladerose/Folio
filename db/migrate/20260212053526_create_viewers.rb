class CreateViewers < ActiveRecord::Migration[8.1]
  def change
    create_table :viewers do |t|
      t.references :room, null: false, foreign_key: true
      t.datetime :accessed_at
      t.string :ip_address
      t.string :user_agent

      t.timestamps
    end
  end
end
