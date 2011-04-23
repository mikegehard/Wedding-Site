WeddingSite::Application.routes.draw do
  resources :rsvps
  root :to => 'page#show'
end
