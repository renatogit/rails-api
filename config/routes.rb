Rails.application.routes.draw do
  resources :item_pedidos
  resources :pedido_compras
  resources :produtos
  resources :clientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
