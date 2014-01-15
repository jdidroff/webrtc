WebSocket::Application.routes.draw do

  devise_for :users
  root 'home#index'

  get 'home/login', to: 'home#login', as: :login

end
