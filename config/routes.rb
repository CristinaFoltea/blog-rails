BlogRails::Application.routes.draw do
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  resources :articles

  root 'articles#index'

end
