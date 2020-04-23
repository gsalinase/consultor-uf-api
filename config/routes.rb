Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :uf, only: [] do
        collection do
          get ':date', to: 'assets#by_date'
        end 
      end

      resources :client, only: [] do
        collection do
          get ':name', to: 'users#by_user'
        end 
      end
    end
  end    
end
