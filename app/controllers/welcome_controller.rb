class WelcomeController < ApplicationController
  def index
  end
  
  def about
  end

  def rsvp
  	
  	puts "----- Params: #{params[:guest_number]}"

  	@guest = Guest.find_by_guest_number(params[:guest_number]) unless params[:guest_number].nil?
  	@guest = Guest.new if @guest.nil?


  	puts "----- Params: #{@guest}"

  	@guest

  end

end
