def consolidate_cart(cart)
  # code here
  new_cart = {}
  cart.each do |item|
    item.each do |key, value|
      value[:count] = cart.count(item)
      new_cart[key] = value
    end
  end
  new_cart
end
  
  
  
  
  

def apply_coupons(cart, coupons)
  # code here
  applied_coupon = {}
  coupons.each do |promo|
    if cart.key?(promo[:item])
      promo_count = 0
      until promo[:num] > cart[promo[:count]][:count]
        cart[promo[:item]][:count] -= promo[:num]
        cart["#{promo[:itme]} W/COUPON"] = {pricce: promo[:cost], clearance: cart[promo[:item]][:clearance], count: promo_count + 1}
      end
    end
  end
  cart.merge(applied_coupon)
end








  

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
