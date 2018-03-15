Rails.application.routes.draw do

  get '/like/:id/likenew' => "like#likenew" ,as:'like_new'
  #get '/comments/:id/createcomments' => "comments#createcomments" ,as:'comment_new'
  resources :comments
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :post

  root "post#index"
end
