class HomeController < ApplicationController
  def index
    @resident = Resident.new
  end

  def subscribe
    @resident = Resident.new(resident_params)

    if @resident.save
      begin
        @resident.subscribe ENV['MAILCHIMP_LIST_ID']
        redirect_to thank_you_path
      rescue Gibbon::MailChimpError => e
        redirect_to root_path, :flash => { error: e.message }
      end
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
