Rails.application.routes.draw do
  resources :gachas, only: [:index, :show] do
    member do
      post :draw
    end
  end
end
