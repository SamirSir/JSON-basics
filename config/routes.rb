Rails.application.routes.draw do

	root to: "furnitures#index"

	resources :furnitures

  	resources :articles
 end
