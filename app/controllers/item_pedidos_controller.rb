class ItemPedidosController < ApplicationController
  before_action :set_item_pedido, only: [:show, :update, :destroy]

  # GET /item_pedidos
  def index
    @item_pedidos = ItemPedido.all

    render json: @item_pedidos
  end

  # GET /item_pedidos/1
  def show
    render json: @item_pedido
  end

  # POST /item_pedidos
  def create
    @item_pedido = ItemPedido.new(item_pedido_params)

    if @item_pedido.save
      render json: @item_pedido, status: :created, location: @item_pedido
    else
      render json: @item_pedido.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /item_pedidos/1
  def update
    if @item_pedido.update(item_pedido_params)
      render json: @item_pedido
    else
      render json: @item_pedido.errors, status: :unprocessable_entity
    end
  end

  # DELETE /item_pedidos/1
  def destroy
    @item_pedido.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_pedido
      @item_pedido = ItemPedido.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_pedido_params
      params.require(:item_pedido).permit(:quantidade, :fk_produto, :fk_ped_compra)
    end
end
