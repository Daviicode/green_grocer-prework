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
  coupons.each do |promo|
    if cart.key?(promo[:item])
      promo_count = 0
      until coupon_name_num > cart_item[:count]
        cart[]








  

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
