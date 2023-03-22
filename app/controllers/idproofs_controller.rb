class IdproofsController < InheritedResources::Base

  
  private

    def idproof_params
      params.require(:idproof).permit(:document, :doctype, :status, :merchant_id)
    end

end
