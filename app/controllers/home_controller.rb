class HomeController < ApplicationController
  def index
    @resident = Resident.new
  end

  def subscribe
    @resident = Resident.new(resident_params)

    if @resident.save
      redirect_to thank_you_path
    else
      render :new
    end
  end

  def thank_you
  end

  private
    def resident_params
      params.require(:resident).permit(:house_number, :road, :email_address)
    end
end
