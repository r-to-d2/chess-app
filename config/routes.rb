Rails.application.routes.draw do
  devise_for :players
  get 'welcome/index'
  root 'welcome#index'
end
