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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
