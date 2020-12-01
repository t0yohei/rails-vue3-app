Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'integer_literal_descriptions/index'
    end
  end
  get 'integer_literal_descriptions/index'
  get 'home/index'
  get 'hello_vue/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
