Rails.application.routes.draw do
  resources :authors do
    resources :articles
  end
end
