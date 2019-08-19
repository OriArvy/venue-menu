class CreateVenueReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :venue_reviews do |t|
      t.float :rating
      t.text :description
      t.references :booking, foreign_key: true

      t.timestamps
    end
  end
end
