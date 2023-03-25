class WishlistsController < ApplicationController

  def index 
    @wishlists = Wishlist.all
  end

  def show
    @wishlist = Wishlist.find(params[:id])
  end

  def new
    @wishlist = Wishlist.new
  end

  def create 
    @wishlist = Wishlist.new(product_id: (params[:id]), merchant_id: current_merchant.id)
    @wishlist.save! 

    redirect_to products_path, notice: "Added product to wishlist Succesfully"
  end
  
  def destroy
    @wishlist = Wishlist.find(params[:id])
    @wishlist.destroy

    redirect_to wishlists_path, notice: "Succesfully Removed from Wishlist"
  end

  private

    def wishlist_params
      params.require(:wishlist).permit(:product_id, :merchant_id)
    end

end
