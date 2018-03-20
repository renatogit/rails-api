class AddIdToItemPedidos < ActiveRecord::Migration[5.1]
  def change
    add_reference :item_pedidos, :cliente, foreign_key: true
  end
end
