class CreateGears < ActiveRecord::Migration[6.0]
  def change
    create_table :gears do |t|
      t.string :name
      t.text :description
      t.text :category
      t.string :image_url

      t.timestamps
    end
  end
end
