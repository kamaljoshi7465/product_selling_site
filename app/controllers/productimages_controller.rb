class ProductimagesController < ApplicationController

  def index
    @productimages = Productimage.all
  end

  def show
    @productimage = Productimage.find(params[:id])
  end

  def new
    @productimage = Productimage.new
    @product = Product.find(params[:product_id])
  end

  def edit
    @productimage = Productimage.find(params[:id])
    @product = Product.find(params[:product_id])
  end

  def create
    @productimage = Productimage.new(productimage_params)   
    @productimage.product_id = params[:product_id]
    @product = Product.find(params[:product_id])
    if @productimage.save
      redirect_to products_path  
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @productimage = Productimage.find(params[:id])
    if @productimage.update(productimage_params)
      redirect_to @productimage
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @productimage = Productimage.find(params[:id])
    @productimage.destroy
  
    redirect_to product_productimages_path
  end
  private
  def set_productimage
    @productimage = Productimage.find(params[:id])
  end
    def productimage_params
      params.require(:productimage).permit(:image, :product_id)
    end

end
