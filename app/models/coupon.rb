class Coupon < ActiveRecord::Base
  def to_s
    self.coupon_code
  end

  def count
    self.count
  end
end
