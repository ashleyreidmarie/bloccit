Rails.application.routes.draw do
  
  get 'sponsored_posts/show'

  get 'sponsored_posts/new'

  get 'sponsored_posts/edit'

#Checkpoints
 resources :topics do
   resources :posts, except: [:index]
   resources :sponsored_posts, except: [:index]
 end
 
 resources :users, only: [:new, :create]

#Assignments
 resources :questions
 resources :advertisements
 
 post 'users/confirm' => 'users#confirm'
 
  get 'about' => 'welcome#about'
  
  get 'contact' => 'welcome#contact'
  
  get 'faq' => 'welcome#faq'

  root 'welcome#index'
end
