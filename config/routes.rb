Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # config/routes.rb

  scope module: 'api' do
    namespace :v1 do
      resources :reservations
    end
  end
end
