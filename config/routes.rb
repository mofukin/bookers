Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#homes'
  resources :books
  get 'new' => 'books#new', as: 'new'
  #post 'books' => 'books#create'
  #get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'list'
  get 'books/:id/edit' => 'books#edit', as: 'edit_list'
  patch 'books/:id' => 'books#update', as: 'update_list'
  delete '/books/:id' => 'books#destroy' , as: 'destroy_list'
  root to: 'homes#homes'
end
