class PedidoComprasController < ApplicationController
  before_action :set_pedido_compra, only: [:show, :update, :destroy]

  # GET /pedido_compras
  def index
    @pedido_compras = PedidoCompra.all

    render json: @pedido_compras
  end

  # GET /pedido_compras/1
  def show
    render json: @pedido_compra
  end

  # POST /pedido_compras
  def create
    @pedido_compra = PedidoCompra.new(pedido_compra_params)

    if @pedido_compra.save
      render json: @pedido_compra, status: :created, location: @pedido_compra
    else
      render json: @pedido_compra.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pedido_compras/1
  def update
    if @pedido_compra.update(pedido_compra_params)
      render json: @pedido_compra
    else
      render json: @pedido_compra.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pedido_compras/1
  def destroy
    @pedido_compra.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido_compra
      @pedido_compra = PedidoCompra.find_by(id: params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pedido_compra_params
      params.require(:pedido_compra).permit(:num_pedido, :data_pedido, :status, :item_pedido_id)
    end
end
