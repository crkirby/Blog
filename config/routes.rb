Rails.application.routes.draw do
  devise_for :users
  #get 'articles/index'
	resources :articles
	
	root to: "articles#index"
end
