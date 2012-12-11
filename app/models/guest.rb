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

class Guest < ActiveRecord::Base
  attr_accessible :name, :tickets, :attend_status, :email, :telephone, :input_method

  valid_email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, format: { with: valid_email_regex }, 
                    uniqueness: { case_sensitive: false }

  validates :email, presence: true, format: { with: valid_email_regex }, 
                    uniqueness: { case_sensitive: false }

  validates :name, presence: true, length: { maximum: 50 }

  validates :telephone, presence: true, length: { maximum: 50 }

end
