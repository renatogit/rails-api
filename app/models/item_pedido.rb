class ItemPedido < ApplicationRecord
  belongs_to :produto
  belongs_to :cliente
  has_many :produto_compra
end
