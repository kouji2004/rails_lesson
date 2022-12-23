Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

devise_for :users,skip: [:passwords], controllers: {
    registrations: "users/registrations",
    sessions: 'users/sessions'
  }

  scope module: :users do
    resources :box, only: [:index]
  end

 resources :post, only: [:new, :index, :show, :create]
resources :tests, only: [:index,:new]
end
