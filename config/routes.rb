Rails.application.routes.draw do
	# get 'items/create'
	# get 'items/index'
	resources :items do
	  get :upvote,on: :member
	  get :expensive, on: :collection
	end    

	get "admin/users_count" => "admin#users_count"      
  
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
