Rails.application.routes.draw do

	resources :boards, :posts, :welcomeposts, :wdiposts, :uxdiposts


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
  get 'boards' => 'boards#index'
  get '/new_board' => 'boards#new_board'
  post '/forums' => 'boards#create'

end
