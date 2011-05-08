class RsvpsController < ApplicationController
  respond_to :html

  before_filter :authenticate, :only => [:index]

  def index
#    @rsvps = Rsvp.all
    render :text => "Hello world"
#    respond_with @rsvps
  end

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

  private

  def authenticate
    authenticate_or_request_with_http_basic do |user, password|
      (user == 'heather' || user == 'mike') && password == 'india4honeymoon'
    end
  end

end
