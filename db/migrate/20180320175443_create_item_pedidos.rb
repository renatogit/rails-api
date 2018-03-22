class CreateItemPedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :item_pedidos do |t|
      t.integer :quantidade
      t.references :produto, foreign_key: true
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
