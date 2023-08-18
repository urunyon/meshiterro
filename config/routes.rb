Rails.application.routes.draw do

  root to: "homes#top"#TOPページを/にしてる
  devise_for :users
  get 'homes/about', as: 'about'#　homesコントローラ/aboutアクション,as: aboutパス
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
end
