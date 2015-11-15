Rails.application.routes.draw do
  resources :questions, only: [:show] do 
    resources :open_text_answers, only: [:create]
  end
end
