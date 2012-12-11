class AddEmailAndTelephoneToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :email, :string
    add_column :guests, :telephone, :string
  end
end
