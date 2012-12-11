class AddAttendStatusToGuests < ActiveRecord::Migration
  def change
    add_column :guests, :attend_status, :string
  end
end
