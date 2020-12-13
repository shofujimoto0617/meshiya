Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: :end_user do
  	root 'homes#top'
    get 'homes/course_index' => 'homes#course_index', as: 'course_index'
    get 'homes/course_show' => 'homes#course_show', as: 'course_show'
    get 'homes/item_index' => 'homes#item_index', as: 'item_index'
    get 'homes/item_show' => 'homes#item_show', as: 'item_show'
  end

  namespace :admin do
  	get 'homes/top' => 'homes#top'
  	resources :items
    resources :courses
    resources :genres, only: [:index, :edit, :create, :update]
  end

end
