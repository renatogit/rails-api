class AddFksToPedidoCompras < ActiveRecord::Migration[5.1]
  def change
    add_reference :pedido_compras, :item_pedido, foreign_key: true
  end
end
