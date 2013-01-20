class WelcomeController < ApplicationController
  
  caches_page :index, :about

  def index
  end
  
  def about
    @padrinos = YAML.load_file(Rails.root.join("config","padrinos.yml"))
  end

  def rsvp
  	
  	@guest = Guest.find_by_guest_number(params[:guest_number]) unless params[:guest_number].nil?
  	@guest = Guest.new if @guest.nil?
  	@guest

  end

end
