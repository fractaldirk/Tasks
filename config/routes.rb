Checklist::Application.routes.draw do
  get 'tasks/complete', to: 'tasks#complete'
  get 'tasks/autocomplete', to: 'tasks#autocomplete'
  get 'tags/:tag', to: 'tasks#index', as: :tag
  resources :tasks do
    resources :comments
  end
  root to: 'tasks#index'
end
