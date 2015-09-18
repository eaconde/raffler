Rails.application.routes.draw do

  scope 'api', defaults: { format: :json} do
    resources :entries
  end
  root to: 'main#index'
  get '*path', to: 'main#index'
end
