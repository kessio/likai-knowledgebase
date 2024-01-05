Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :questions 
      resources :search_articles, only: [] do
        collection do
          get :search
        end
      end
    end
  end
end
