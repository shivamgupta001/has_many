class OrdersController < ApplicationController

 def index
  @customer = Customer.find(params[:customer_id])
  @orders = @customer.orders
 end
 def new
  @customer = Customer.find(params[:customer_id])
  @order = @customer.orders.build
 end
 def create
  @customer = Customer.find(params[:customer_id])
  @order=@customer.orders.create(params[:order])
    if @order.save
      redirect_to customer_orders_path(@customer)
    else 
      render :new
    end
 end
 def edit
  @customer = Customer.find(params[:customer_id])
  @order= @customer.orders.find(params[:id])   
 end
 def update
   @customer = Customer.find(params[:customer_id])
   @order = @customer.orders.find(params[:id])
   if @order.update_attributes(params[:order])
       redirect_to customer_orders_path(@customer)
   else
       render :edit
   end
  
 end
 def destroy
    @customer = Customer.find(params[:customer_id])
    @order = @customer.orders.find(params[:id])
     if @order.destroy
         redirect_to customer_orders_path(@customer)
     else
          render :new
     end
 end

end
