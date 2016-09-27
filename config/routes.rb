Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :email_submissions do
      get "/upvote", to:"vote#up_vote"
      get "/downvote", to:"vote#down_vote"
    end

  root 'email_submissions#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
