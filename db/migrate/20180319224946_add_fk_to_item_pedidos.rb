class AddFkToItemPedidos < ActiveRecord::Migration[5.1]
  def change
    add_reference :item_pedidos, :produtos, foreign_key: true
    add_reference :item_pedidos, :pedido_compras, foreign_key: true
  end
end
