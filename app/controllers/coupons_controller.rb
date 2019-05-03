class CouponsController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

# get '/coupons' do
#     #"Hello, World!"
#     @greetups = Greetup.all
#     @users = User.all
#     erb :"greetups/index"
#   end

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
    @coupon = Coupon.new
  end

# def create
#   @coupon = Coupon.new
#   @coupon.coupon_code = params[:coupon_code]
#   @coupon.store = params[:store]
#   @coupon.save
#   redirect_to coupon_path(@coupon)
# end 

def create
    @coupon = Coupon.new(params[:id])
    if @coupon.save
      redirect_to @coupon
    else
      render 'new'
    end
  end






# expect{
#           post :create, params: { :coupon => { :coupon_code => "ASD123", :store => "Dean and Deluca" } }
#         }.to change(Coupon,:count).by(1)
#       end

#end
end
