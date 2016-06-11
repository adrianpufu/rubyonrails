class ProductsController < ApplicationController
    def create
    @channel = Channel.find(params[:channel_id])
    @product = @channel.products.create(product_params)
    redirect_to channel_path(@channel)
    end
 
  private
    def product_params
      params.require(:product).permit(:name, :description, :active)
    end
end
