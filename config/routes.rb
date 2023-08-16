Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"#TOPページを/にしてる
　#　homesコントローラ/aboutアクション,as: aboutパス
  get 'homes/about', as: 'about'
end
