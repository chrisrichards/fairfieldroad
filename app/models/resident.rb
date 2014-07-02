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

ROADS = [ "Fairfield Road", "Cranworth Road", "Conifer Close" ]

class Resident < ActiveRecord::Base
end
