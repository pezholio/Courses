class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :email
      t.integer :course_id

      t.timestamps
    end
  end
end
