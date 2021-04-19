class CartsController < ApplicationController
  before_action :authenticate_user!
   
  def update
    product = params[:cart][:product_id].to_i
    quantity = params[:cart][:quantity].to_i

    current_order.add_product(product, quantity) 

    respond_to do |format|
      format.html {redirect_to root_url, notice: 'Product add successfuly'}
      format.js
    end
  end

  def show
    @order = current_order
  end
end
