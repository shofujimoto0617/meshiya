Rails.application.routes.draw do
  namespace :admin do
    get 'items/index'
    get 'items/new'
    get 'items/show'
    get 'items/edit'
  end
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: :end_user do
  	root 'homes#top'
  end

  namespace :admin do
  	get 'homes/top' => 'homes#top'
  	resources :items
  end

end
