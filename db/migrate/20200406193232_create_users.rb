class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.text :bio
      t.text :influences
      t.string :password
      t.boolean :logged_in

      t.timestamps
    end
  end
end
