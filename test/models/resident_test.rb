# == Schema Information
#
# Table name: residents
#
#  id            :integer          not null, primary key
#  house_number  :integer
#  road          :string(255)
#  email_address :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class ResidentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
