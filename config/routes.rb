BlogRails::Application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :articles

  root 'articles#index'

end
