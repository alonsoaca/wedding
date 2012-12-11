class AddTestFieldToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :test_field, :string
  end
end
