class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :check_in
      t.date :check_out
      t.float :price
      t.boolean :payment_completed?, default: false
      t.references :user, foreign_key: true
      t.references :venue, foreign_key: true

      t.timestamps
    end
  end
end
