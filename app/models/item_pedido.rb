class ItemPedido < ApplicationRecord
  belongs_to :clientes
  belongs_to :produtos
  has_many :pedido_compras
end
