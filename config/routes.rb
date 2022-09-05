# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contracts, only: %i[index create]
  get 'latest-contract', to: 'contracts#latest_contract'
  resources :nfts, only: %i[index create]
  get 'latest-nft', to: 'nfts#latest_nft'
end
