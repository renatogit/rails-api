class ItemPedidoSerializer < ActiveModel::Serializer
  attributes :id, :quantidade, :fk_produto, :fk_ped_compra
end
