Rails.application.routes.draw do
  namespace :api do
    resources :spots, only: [:create, :index, :show, :update], param: :sort do
      resources :images, only: [:create]
      resources :spot_reviews, only: [:create, :update]
    end
  end
end

