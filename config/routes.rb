Synthesis::Application.routes.draw do
  resources :articles, :only => [:new, :index, :show]
  root :to => 'articles#index'
end
