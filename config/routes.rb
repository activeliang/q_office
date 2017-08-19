Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  resources :abnormals
  resources :form_options do
    member do
      post :delete_item
    end
  end
end
