require 'test_helper'

class PedidoComprasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pedido_compra = pedido_compras(:one)
  end

  test "should get index" do
    get pedido_compras_url, as: :json
    assert_response :success
  end

  test "should create pedido_compra" do
    assert_difference('PedidoCompra.count') do
      post pedido_compras_url, params: { pedido_compra: { data_pedido: @pedido_compra.data_pedido, fk_cliente: @pedido_compra.fk_cliente, num_pedido: @pedido_compra.num_pedido } }, as: :json
    end

    assert_response 201
  end

  test "should show pedido_compra" do
    get pedido_compra_url(@pedido_compra), as: :json
    assert_response :success
  end

  test "should update pedido_compra" do
    patch pedido_compra_url(@pedido_compra), params: { pedido_compra: { data_pedido: @pedido_compra.data_pedido, fk_cliente: @pedido_compra.fk_cliente, num_pedido: @pedido_compra.num_pedido } }, as: :json
    assert_response 200
  end

  test "should destroy pedido_compra" do
    assert_difference('PedidoCompra.count', -1) do
      delete pedido_compra_url(@pedido_compra), as: :json
    end

    assert_response 204
  end
end
