class PedidoCompraSerializer < ActiveModel::Serializer
  attributes :id, :num_pedido, :data_pedido, :fk_cliente
end
