class IdproofsController < ApplicationController

  def index
    @idproofs = Idproof.all
  end

  def show
    @idproof = Idproof.find(params[:id])
  end

  def new
    @idproof = Idproof.new
  end

  def edit
    @idproof = Idproof.find(params[:id])
  end


  def create
    @idproof = Idproof.new(idproof_params) 
    @idproof.merchant_id = current_merchant.id 
    if @idproof.save
      redirect_to @idproof
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def update
    @idproof = Idproof.find(params[:id])

    if @idproof.update(idproof_params)
      redirect_to @idproof
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @idproof = Idproof.find(params[:id])
    @idproof.destroy

    redirect_to idproofs_path, status: :see_other
  end

  private

    def idproof_params
      params.require(:idproof).permit(:document, :doctype, :status, :merchant_id)
    end

end
