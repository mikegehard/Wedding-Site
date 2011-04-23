class RsvpsController < ApplicationController
  respond_to :html

  def new
    @rsvp = Rsvp.new

    respond_with @rsvp
  end

  def create
    @rsvp = Rsvp.new(params[:rsvp])

    flash[:notice] = "Thanks for letting us know about your plans for our wedding!" if @rsvp.save

    respond_with(@rsvp) do |format|
      format.html { @rsvp.persisted? ? redirect_to(root_path) : render('new') }
    end
  end

end
