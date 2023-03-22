class ProductimagesController < ApplicationController

  def index
    @productimages = Productimage.all
  end

  def show
    @productimage = Productimage.find(params[:id])
  end

  def new
    @productimage = Productimage.new
  end

  def edit
    @productimage = Productimage.find(params[:id])
  end

  def create
    @productimage = Productimage.new(productimage_params) 
    if @productimage.save
      redirect_to @productimage 
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @productimage = Productimageproductimage.find(params[:id])
    if @productimage.update(productimage_params)
      redirect_to @productimage
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @productimage = Productimage.find(params[:id])
    @productimage.destroy
  
    redirect_to productimages_path, status: :see_other
  end
  private
  def set_productimage
    @productimage = Productimage.find(params[:id])
  end
    def productimage_params
      params.require(:productimage).permit(:image, :product_id)
    end

end
