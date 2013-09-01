Singma::Application.routes.draw do
  resources :customers

  mount Kss::Engine => '/kss' if Rails.env.development?

  resources :galleries, :path => 'gallery'

  resources :locations

  resources :testimonials do
    collection do
      get :show_recent
    end
  end

  resources :quotes

  devise_for :users, :path => '/', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  resources :users

  resources :terms_of_use, :path => 'terms-of-use'

  resources :privacy_policy, :path => 'privacy-policy'

  resources :contacts, :path => "contact-us"

  resources :abouts, :path => 'about-us'

  # You can have the root of your site routed with "root"
  root :to => 'quotes#new'
end
