Bootstrap::Application.routes.draw do

  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }
  match '/profile/:id/sign' => 'users#sign', via: [:get, :patch], :as => :sign
  get '/about'    => 'high_voltage/pages#show', id: 'about'
  get '/contact'  => 'high_voltage/pages#show', id: 'contact'
  get '/privacy'  => 'high_voltage/pages#show', id: 'privacy'
  get '/terms'    => 'high_voltage/pages#show', id: 'terms'
  get '/sign'    => 'high_voltage/pages#show', id: 'sign'

  get '/home', to: redirect('/')

  root :to => 'high_voltage/pages#show', id: 'home'

end