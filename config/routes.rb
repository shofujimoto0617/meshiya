Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: :end_user do
  	root 'homes#top'
  end

  namespace :admin do
  	get 'homes/top' => 'homes#top'
  	resources :items
    resources :courses
    resources :genres, only: [:index, :edit, :create, :update]
  end

end
