class CartsController < ApplicationController

  def index 
    @carts = Cart.all 
  end

  def show 
    @cart = Cart.find(params[:id])
  end

  def create
    @cart = Cart.new(cartitem: 1, product_id: params[:id], merchant_id: current_merchant.id) 
    if @cart.save!
      redirect_to products_path, notice: "Added to Cart"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy
    redirect_to carts_path 
  end

  private

    def cart_params
      params.require(:cart).permit(:cartitem, :product_id, :merchant_id)
    end

end
