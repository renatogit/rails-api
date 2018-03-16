class CreateItemPedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :item_pedidos do |t|
      t.integer :quantidade
      t.integer :fk_produto
      t.integer :fk_ped_compra

      t.timestamps
    end
  end
end
