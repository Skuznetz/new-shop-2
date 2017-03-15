Rails.application.routes.draw do
	# get 'items/create'
	# get 'items/index'
	resources :items do
	  get :upvote,on: :member
	end           
  
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
