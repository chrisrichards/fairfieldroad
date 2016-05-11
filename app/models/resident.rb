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
  validates :house_number, :road, :email_address, presence: true
  validates :email_address, uniqueness: true

  def subscribe(list_id)
    gb = Gibbon::Request.new
    gb.lists(list_id).members.create(body: {email_address: self.email_address, status: "subscribed", double_optin: true})
  end
end
