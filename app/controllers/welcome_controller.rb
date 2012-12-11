class WelcomeController < ApplicationController
  def index
  end
  
  def about
  end

  def rsvp
  	
  	@guest = Guest.find_by_guest_number(params[:guest_number]) unless params[:guest_number].nil?
  	@guest = Guest.new if @guest.nil?
  	@guest

  end

end
