Rails.application.routes.draw do
	root to: "cal#calView"
	get 'operation', to: 'cal#operation'
end