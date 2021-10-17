Rails.application.routes.draw do
  resources :gachas, only: %i[index show] do
    member do
      post :draw
      post :draw_times
    end
  end
end
