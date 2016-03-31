Rails.application.routes.draw do
  
#Checkpoints

 resources :labels, only: [:show]
 
 resources :topics do
   resources :posts, except: [:index]
   resources :sponsored_posts, except: [:index]
 end
 
 resources :posts, only: [] do
  resources :comments, only: [:create, :destroy]
 end
 
 resources :users, only: [:new, :create]
 
 resources :sessions, only: [:new, :create, :destroy]

#Assignments
 resources :questions
 resources :advertisements
 
  get 'about' => 'welcome#about'
  
  get 'contact' => 'welcome#contact'
  
  get 'faq' => 'welcome#faq'

  root 'welcome#index'
end
