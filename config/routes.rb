# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :usuarios, controllers: { registrations: "registrations" }
  namespace :backoffice do
    resources :bolsas

    resources :editais do
      resources :inscricoes
      resources :projetos
    end
    get 'inscricoes/editais', to: "inscricoes#editais"

    resources :predios do
      resources :laboratorios
    end

    resources :usuarios, only: [:index, :show, :edit, :update]
    get 'dashboard', to: 'dashboard#index'
  end

  namespace :site do
    get 'home/index'
  end
  get 'admin', to: 'backoffice/dashboard#index'

  authenticated :usuario do
    root 'backoffice/dashboard#index', as: :authenticated_root
  end

  root "site/home#index"

  # authenticated :usuario do
  #   root to: 'editais#index', as: :authenticated_root
  # end
  # unauthenticated :usuario do
  #   root to: 'editais#index', as: :unauthenticated_root
  # end
end
