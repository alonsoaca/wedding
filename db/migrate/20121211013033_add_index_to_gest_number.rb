class AddIndexToGestNumber < ActiveRecord::Migration
  def change
  	add_index :guests, :guest_number, { :name => "guest_number_index", :unique => true}
  end
end
