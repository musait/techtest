class DeliveryItemsController < ApplicationController
  before_action :set_delivery_item, only: [:show, :update, :destroy]

  # GET /delivery_items
  def index
    @delivery_items = DeliveryItem.all

    render json: @delivery_items
  end

  # GET /delivery_items/1
  def show
    render json: @delivery_item
  end

  # POST /delivery_items
  def create
    @delivery_item = DeliveryItem.new(delivery_item_params)
    if @delivery_item.save
      render json: @delivery_item, status: :created, location: @delivery_item
    else
      render json: @delivery_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /delivery_items/1
  def update
    if @delivery_item.update(delivery_item_params)
      render json: @delivery_item
    else
      render json: @delivery_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /delivery_items/1
  def destroy
    @delivery_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_item
      @delivery_item = DeliveryItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def delivery_item_params
      params.require(:delivery_item).permit(:delivery_id,:item_id)
    end
end
