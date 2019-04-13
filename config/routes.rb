Rails.application.routes.draw do

	root 'home#index'

	get "vieux_port", to: "home#vieuxport"
	get "corniche", to: "home#corniche"
	get "calanques", to: "home#calanques"
	post "/message", to: "user#new"


end
