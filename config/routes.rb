Rails.application.routes.draw do
  resources :members
	root to: "teams#index"
  resources :teams
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
