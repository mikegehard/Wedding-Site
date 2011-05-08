WeddingSite::Application.routes.draw do
  resources :rsvps, :only => [:new, :create, :index ]
  root :to => 'page#show', :page_name => 'home'
  match "/:page_name" => 'page#show'
end
