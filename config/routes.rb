Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # read all
  get 'articles', to: 'articles#index', as: :articles

  # create one
  get 'articles/new', to: 'articles#new'
  post 'articles', to: 'articles#create'

  # read one - show must go after the "new" routes
  get 'articles/:id', to: 'articles#show', as: :article

  # edit one
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id', to: 'articles#update'

  # delete one
  delete 'articles/:id', to: 'articles#destroy'
end
