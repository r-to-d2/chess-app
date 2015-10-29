Rails.application.routes.draw do
  devise_for :players

  get 'games/new'

  get 'games/create'

  get 'games/show'

  root 'welcome#index'
end
