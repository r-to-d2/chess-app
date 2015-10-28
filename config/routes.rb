Rails.application.routes.draw do
  get 'games/new'

  get 'games/create'

  get 'games/show'

  root 'welcome#index'
end
