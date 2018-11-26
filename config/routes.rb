Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :posts, only: [:create, :index, :show, :update, :destroy]
    end
  end
end
