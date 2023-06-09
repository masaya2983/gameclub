Rails.application.routes.draw do

  #ユーザー用
  devise_for :members, contorollers:{
    registrstions: "publick/ registrstions",
    sessions: 'publick/sessions'
  }
  #管理者用
  devise_for :admins,contorollers:{
   sessions: "adomin/sessions"
  }
  namespace 

   namespace :admin do
   root :to => "homes#top"
   resources :member,only: [:index,:show,:edit,:update]
   resources :
 end
 
 scope module: :public do
   root :to =>"homes#top"
   get "about" => "homes#top"
   resources :member,only: [:index,:show,:edit,:update]
   resources :game,only: [:index,:]
 end
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
