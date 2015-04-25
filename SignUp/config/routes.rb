Rails.application.routes.draw do

  get 'jobposts/index'

  get 'jobposts/new'

  get 'anyposts/index'

  get 'anyposts/new'

  get 'uxdposts/index'

  get 'uxdposts/new'

  get 'mdposts/index'

  get 'mdposts/new'

  get 'vdposts/index'

  get 'vdposts/new'

  get 'bdsposts/index'

  get 'bdsposts/new'

  get 'dsposts/index'

  get 'dsposts/new'

  get 'pmposts/index'

  get 'pmposts/new'

  get 'fewdposts/index'

  get 'fewdposts/new'

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
