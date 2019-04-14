Rails.application.routes.draw do

	root 'home#index'


	get "/message", to: "user#index"
	get "/admin", to: "user#admin"
	post "/admin", to: "user#admin"
	post "/message", to: "user#new"


end
