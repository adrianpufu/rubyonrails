class VariantsController < ApplicationController
    def create
    @product = Product.find(params[:product_id])
    @variant = @product.variants.create(variant_params)
    redirect_to product_path(@product)
    end
 
  private
    def variant_params
      params.require(:variant).permit(:quantity, :price)
    end
end
