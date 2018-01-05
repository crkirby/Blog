Rails.application.routes.draw do
  #get 'articles/index'
	resources :articles
	
	root to: "articles#index"
end
