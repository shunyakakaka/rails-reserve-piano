Rails.application.routes.draw do
  get 'user', to: "user#index"
  get 'home', to: "home#index"
end
