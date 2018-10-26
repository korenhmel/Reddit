Rails.application.routes.draw do
  # resources :comments
  devise_for :users
  root "links#index"
  resources :links do
    member do
         put "like", to: "links#upvote"
         put "dislike", to: "links#downvote"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
          end
          resources :comments, only: [:create, :destroy]
    end
end
