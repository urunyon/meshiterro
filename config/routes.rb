Rails.application.routes.draw do

  root to: "homes#top"#TOPページを/にしてる
  devise_for :users
  get 'homes/about', as: 'about'#　homesコントローラ/aboutアクション,as: aboutパス
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit]
end
