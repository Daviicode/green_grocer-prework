def consolidate_cart(cart)
  # code here
  new_cart = {}
  cart.each do |item|
    item.each do |key, value|
      value[:count] = cart.count(item)
      new_cart[key] = value
    end
  end
  new_cart = {}
  coupons.each do |promo|
    if cart.has_key?(promo[:item]) && cart[promo[:item]][:count] >= promo[:num]
      promo_key = promo[:item] + "W/COUPON"
      if cart.has_key?(promo_key)
        cart[promo_key][:count] += 1 
      else cart[promo_key] = {price: promo[:cost], clearance: cart[promo[:item]][:clearance],
end

def apply_coupons(cart, coupons)
  # code here
  
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
