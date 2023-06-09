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

   namespace :admin do
   root :to => "homes#top"
   resources :members, only: [:index,:show,:edit,:update]
   resources :games, only: [:index,:show,:edit,:update]
   resources :category, only[:index,:show,:edit,:update]
 end

 scope module: :public do
   root :to =>"homes#top"
   get "about" => "homes#top"
   resources :member, only: [:index,:show,:edit,:update]
   resource :relationships, only: [:create, :destroy]
   get 'followings' => 'relationships#followings', as: 'followings'
   get 'followers' => 'relationships#followers', as: 'followers'
   resources :game, only: [:index,:create,:show,:update,:destroy]
   resources :coments, only: [:create,:destroy]
   resources :category, only: [:index,:create,:show,:update]
   resource :favorites, only[:create,:destroy]
 end
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
