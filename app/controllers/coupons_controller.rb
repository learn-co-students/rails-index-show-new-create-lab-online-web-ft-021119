class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon][:coupon_code]
    @coupon.store = params[:coupon][:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end
#
# def create
#     @coupon = Coupon.new(params[:id])
#     if @coupon.save
#       redirect_to @coupon
#     else
#       render 'new'
#     end
#   end
# expect{
#           post :create, params: { :coupon => { :coupon_code => "ASD123", :store => "Dean and Deluca" } }
#         }.to change(Coupon,:count).by(1)
#       end

#end
end
