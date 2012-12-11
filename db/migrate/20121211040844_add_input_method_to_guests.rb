class AddInputMethodToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :input_method, :string
  end
end
