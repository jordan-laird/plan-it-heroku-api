class Api::V1::CustomersController < ApplicationController
    before_action :define_current_customer

    def create
        customer = Customer.create(customer_params)
        render json: customer
    end

    def show
        render json: current_customer, include: [ :quotes ]
    end
    
    def index
        render json: Customer.all
    end
    
    def update
        current_customer.update(customer_params)
        render json: current_customer
    end
    
    def destroy
        current_customer.destroy
        render json: customer
    end
    
    def define_current_customer
        if params[:id]
            @current_customer = Customer.find(params[:id])
        end
    end

    def current_customer
        @current_customer
    end
    
    def customer_params
        params.require(:customer).permit(:name, :email, :img_url)
    end
end