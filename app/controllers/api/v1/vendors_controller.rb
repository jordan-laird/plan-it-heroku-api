class Api::V1::VendorsController < ApplicationController
    before_action :define_current_vendor
    
    def create
        vendor = Vendor.create(vendor_params)
        render json: vendor
    end

    def show
        render json: current_vendor
    end
    
    def index
        render json: Vendor.all
    end
    
    def update
        current_vendor.update(vendor_params)
        render json: current_vendor
    end
    
    def destroy
        current_vendor.destroy
        render json: vendor
    end
    
    def define_current_vendor
        if params[:id]
            @current_vendor = Vendor.find(params[:id])
        end
    end

    def current_vendor
        @current_vendor
    end
    
    def vendor_params
        params.require(:vendor).permit(:name, :city, :state, :phone, :logo_img, :website, :service, :description, :price_range, :email)
    end
end