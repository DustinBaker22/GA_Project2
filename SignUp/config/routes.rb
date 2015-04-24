Rails.application.routes.draw do
  root :to => 'sessions#new'
	get '/signup' => 'users#new'
	#root "pages#signup"
	post "users" => "users#create"
	#get "/signup" => "pages#signup"
	get "/contact" => "pages#contact"
	get "/about" => "pages#about"
	get "/help" => "pages#help"
	get "/login" => "sessions#new"
	post "/login" => "sessions#create"
	get "/logout" => "sessions#destroy"
  get '/forums' => "boards#forums"
  get '/new_board' => 'boards#new_board'
  post '/create_board' => 'boards#create_board'
end
