Rails.application.routes.draw do
  
#Checkpoints

 resources :labels, only: [:show]
 
 resources :topics do
   resources :posts, except: [:index]
   resources :sponsored_posts, except: [:index]
 end
 
 resources :posts, only: [] do
  resources :comments, only: [:create, :destroy]
  resources :favorites, only: [:create, :destroy]
  
  post '/up-vote' => 'votes#up_vote', as: :up_vote
  post '/down-vote' => 'votes#down_vote', as: :down_vote
 end
 
 resources :users, only: [:new, :create, :show]
 
 resources :sessions, only: [:new, :create, :destroy]

#Assignments
 resources :questions
 resources :advertisements
 
  get 'about' => 'welcome#about'
  
  get 'contact' => 'welcome#contact'
  
  get 'faq' => 'welcome#faq'

  root 'welcome#index'
  
 #API routes
 namespace :api do
  namespace :v1 do
   resources :users, only: [:index, :show, :create, :update]
   resources :topics, except: [:edit, :new]
   resources :posts, only: [:index, :show]
   resources :comments, only: [:index, :show]
  end
 end
 
end
