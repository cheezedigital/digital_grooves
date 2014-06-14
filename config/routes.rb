Rails.application.routes.draw do
  resources :items
  root 'site#index'
  get '/about' => 'site#about'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

end
