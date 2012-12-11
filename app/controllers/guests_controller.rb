class GuestsController < ApplicationController

  def create

  	guest_by_email = Guest.find_by_email(params[:guest][:email])

    @guest = guest_by_email unless guest_by_email.nil?

    @guest = Guest.new(params[:guest]) if @guest.nil?

    @guest.input_method = "self_enroll" if @guest.input_method.nil?

    if @guest.save
      flash.now[:success] = "Gracias #{@guest.name}, tu respuesta se ha guardado correctamente. Pronto alguien se pondra en contactor contigo."
    end

    render 'welcome/rsvp'

  end

  def update

  	@guest = Guest.find(params[:id])

  	if @guest.update_attributes (params[:guest])
      flash.now[:success] = "Gracias #{@guest.name}, tu respuesta se ha guardado correctamente. Pronto alguien se pondra en contactor contigo."
    end

  	render 'welcome/rsvp'

  end
  
end
