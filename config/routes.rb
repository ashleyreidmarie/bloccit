Rails.application.routes.draw do
  
#Checkpoints
 resources :topics do
   resources :posts, except: [:index]
 end

#Assignments
 resources :questions
 resources :advertisements
 
  get 'about' => 'welcome#about'
  
  get 'contact' => 'welcome#contact'
  
  get 'faq' => 'welcome#faq'

  root 'welcome#index'
end
