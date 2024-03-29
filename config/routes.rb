Rails.application.routes.draw do
  devise_for :users
  root  'blogs#index'  
  # resources :blogs
  # resources :users, only: [:show]
                       #ルートパスの指定
  get 'blogs' => 'blogs#index'             #ツイート一覧画面
  get   'blogs/new'  =>  'blogs#new'       #ツイート投稿画面
  post  'blogs'      =>  'blogs#create'    #ツイート投稿機能
  delete  'blogs/:id'  => 'blogs#destroy'
  patch   'blogs/:id'  => 'blogs#update'
  get   'blogs/:id/edit'  => 'blogs#edit'
  get   'users/:id'   =>  'users#show'    #Mypageへのルーティング
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
