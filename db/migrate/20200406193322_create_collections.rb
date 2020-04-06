class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.integer :user_id
      t.integer :gear_id

      t.timestamps
    end
  end
end
