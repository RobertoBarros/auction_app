class BidsController < ApplicationController

  def create
    product = Product.find(params[:product_id])
    value = params[:bid_value]
    Bid.create!(product: product, user: current_user, value: value)
    redirect_to product_path(product)
  end
end
