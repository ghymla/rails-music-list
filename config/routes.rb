Rails.application.routes.draw do
  get '/', to: "years#index"
  resources :years, only: %i[show] do
    resources :musics, only: %i[new create]
  end

  resources :musics, only: %i[show] do
    resources :categorys, only: %i[show]
  end

  resources :musics, only: :destroy
end
