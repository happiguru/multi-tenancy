require "constraints/subdomain_required"
Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  constraints(SubdomainRequired) do
    scope module: "accounts" do
      root to: "institutions#index", as: :account_root
      resources :institutions
    end
  end
  resources :institutions
  resources :accounts
  root to: "accounts#index"
end
