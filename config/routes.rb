Rails.application.routes.draw do
  resources :item_pedidos
  resources :pedido_compras
  resources :produtos
  resources :clientes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'clientes/get_Clients' => 'clientes#get_Clients'

  get 'clientes/verClientes' => 'clientes#verClientes'
  post 'clientes/create' => 'clientes#create'

  put 'clientes/update/:id' => 'clientes#update'
  delete 'clientes/destroy/:id' => 'clientes#destroy'
end
