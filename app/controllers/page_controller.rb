class PageController < ApplicationController
  def show
    render "pages/#{params["page_name"]}"
  end
end