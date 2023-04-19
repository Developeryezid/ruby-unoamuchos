Rails.application.routes.draw do
  namespace :clientes do
    get 'articulos/index'
    get 'articulos/new'
    get 'articulos/show'
    get 'articulos/edit'
  end
  resources :clientes do
    resources :articulos, module: :clientes
  end
end
