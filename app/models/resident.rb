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
  def subscribe(list_id)
    gb = Gibbon::API.new
    gb.lists.subscribe({id: list_id, email: {email: self.email_address}, :double_optin => true})
  end
end
