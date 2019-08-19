class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :photo
      t.string :name
      t.integer :price
      t.float :rating
      t.string :address
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
