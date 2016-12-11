Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources :posts
  # resources :users

  # get 'contact/contact_us', as: 'contact'
  # post 'contact/create'


  match '/welcome/about', to: 'welcome#about', via: :get, as: 'about'
  match '/welcome/index', to: 'welcome#index', via: :get, as: 'index'
  match '/welcome/services', to: 'welcome#services', via: :get, as: 'services'
  match '/welcome/p404', to: 'welcome#p404', via: :get, as: 'p404'
  match '/welcome/portfolio1col', to: 'welcome#portfolio1col', via: :get, as: 'portfolio1col'
  match '/welcome/portfolio2col', to: 'welcome#portfolio2col', via: :get, as: 'portfolio2col'
  match '/welcome/portfolio3col', to: 'welcome#portfolio3col', via: :get, as: 'portfolio3col'
  match '/welcome/portfolio4col', to: 'welcome#portfolio4col', via: :get, as: 'portfolio4col'
  match '/welcome/portfolioitem', to: 'welcome#portfolioitem', via: :get, as: 'portfolioitem'
  match '/welcome/bloghome1', to: 'welcome#bloghome1', via: :get, as: 'bloghome1'
  match '/welcome/bloghome2', to: 'welcome#bloghome2', via: :get, as: 'bloghome2'
  match '/welcome/blogpost', to: 'welcome#blogpost', via: :get, as: 'blogpost'
  match '/welcome/sidebar', to: 'welcome#sidebar', via: :get, as: 'sidebar'
  match '/welcome/faq', to: 'welcome#faq', via: :get, as: 'faq'
  match '/welcome/pricing', to: 'pricing#sidebar', via: :get, as: 'pricing'
  match '/welcome/fullwidth', to: 'fullwidth#sidebar', via: :get, as: 'fullwidth'
end
