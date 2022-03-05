Rails.application.routes.draw do
 root "pages#home"
 get "about" , to: "pages#about"
#  resources "articles" --> this one also worked
#  resources :articles, only: [:show, :index, :new, :create, :edit, :update, :destroy]
 resources :articles
end
