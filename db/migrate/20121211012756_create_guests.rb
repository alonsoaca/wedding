class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.integer :guest_number
      t.string :name
      t.integer :tickets

      t.timestamps
    end
  end
end
