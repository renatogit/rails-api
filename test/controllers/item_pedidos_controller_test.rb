require 'test_helper'

class ItemPedidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_pedido = item_pedidos(:one)
  end

  test "should get index" do
    get item_pedidos_url, as: :json
    assert_response :success
  end

  test "should create item_pedido" do
    assert_difference('ItemPedido.count') do
      post item_pedidos_url, params: { item_pedido: { fk_ped_compra: @item_pedido.fk_ped_compra, fk_produto: @item_pedido.fk_produto, quantidade: @item_pedido.quantidade } }, as: :json
    end

    assert_response 201
  end

  test "should show item_pedido" do
    get item_pedido_url(@item_pedido), as: :json
    assert_response :success
  end

  test "should update item_pedido" do
    patch item_pedido_url(@item_pedido), params: { item_pedido: { fk_ped_compra: @item_pedido.fk_ped_compra, fk_produto: @item_pedido.fk_produto, quantidade: @item_pedido.quantidade } }, as: :json
    assert_response 200
  end

  test "should destroy item_pedido" do
    assert_difference('ItemPedido.count', -1) do
      delete item_pedido_url(@item_pedido), as: :json
    end

    assert_response 204
  end
end
