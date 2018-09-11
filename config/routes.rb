Rails.application.routes.draw do
  resources :boards do
    resources :lists
  end

  resources :tasks, module: 'list'
end
