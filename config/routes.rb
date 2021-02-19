Rails.application.routes.draw do

  get '/' => 'welcome#index'
  get 'welcome' => 'welcome#index'

  get 'login' => 'control#login'
  post 'login' => 'control#admin'
  get 'logout' => 'control#destroy'

end
