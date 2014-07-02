class HomeController < ApplicationController
  def index
    @resident = Resident.new
  end
end
