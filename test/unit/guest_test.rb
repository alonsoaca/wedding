# == Schema Information
#
# Table name: guests
#
#  id            :integer          not null, primary key
#  guest_number  :integer
#  name          :string(255)
#  tickets       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  attend_status :string(255)
#  email         :string(255)
#  telephone     :string(255)
#  input_method  :string(255)
#

require 'test_helper'

class GuestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
