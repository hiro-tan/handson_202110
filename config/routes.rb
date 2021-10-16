Rails.application.routes.draw do
  resources :gachas, only: %i[index show] do
    member do
      post :draw
    end
  end
end
