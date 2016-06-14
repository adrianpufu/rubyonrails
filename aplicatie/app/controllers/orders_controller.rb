class OrdersController < ApplicationController
  def create
    @order = current_order
    @variants = @order.variants.new(variants_params)
    @order.save
    session[:order_id] = @order.id
  end

  def update
  end

  def destroy
  end
  def variant_params
    params.require(:variant).permit( :product_id)
  end
end
