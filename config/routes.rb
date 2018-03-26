Rails.application.routes.draw do
  resources :clientes
  resources :produtos
  resources :item_pedidos
  resources :pedido_compras
end
