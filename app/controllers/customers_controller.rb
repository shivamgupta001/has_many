class CustomersController < ApplicationController
  def index
    @customers=Customer.all
  end
  def new
    @customer=Customer.new
  end
  def create
    @customer=Customer.create(params[:customer])
      if @customer.save
          redirect_to customers_path
      else
          render :new
      end
  end
  def show
    @customer=Customer.find(params[:id])
  end
  def edit
    @customer=Customer.find(params[:id])
  end
  def update
    @customer=Customer.find(params[:id])
      if @customer.update_attributes(params[:customer])
         redirect_to customers_path
      else
         render :edit      
      end
  end
  def destroy
    @customer=Customer.find(params[:id])
      if @customer.destroy
           redirect_to customers_path
      else
            render :new
      end
  end
end
