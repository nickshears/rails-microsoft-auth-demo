Rails.application.routes.draw do
  root to: 'auth#new'
  # OmniAuth callback route
  # get 'auth/signin'
  match '/auth/:provider/callback', to: 'auth#callback', via: [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
