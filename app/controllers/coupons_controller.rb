class CouponsController < ApplicationController
  
  def index # displays list of coupons for index view 
    @coupons = Coupon.all 
  end 
  
  def new #creating a new coupon class here 
    @coupon = Coupon.new 
  end 
  
  def show #take the params id and try to find the coupon and assign it to instance local_variables
  @coupon = Coupon.find(params[:id])
end 
  
  def create
    @coupon = Coupon.create(store: params["coupon"]["store"], coupon_code: params["coupon"]["coupon_code"])
    #byebug
    @coupon.save
    redirect_to coupon_path(@coupon)
  end 
  
    
end
