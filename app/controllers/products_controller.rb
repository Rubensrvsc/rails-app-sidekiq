class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    product = Product.new(product_params)

    render :new if product.save
  end

  private

  def product_params
    params.require(:product).permit(:name_product, :price)
  end
end
