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
  cart.each do |item, properties|
    if properties[:clearance] == true
      properties[:price] = (properties[:price] * 0.8).round(2)
    end
  end
  cart
end



  

def apply_clearance(cart)
  # code here
  cart.each do |item, properties|
    if properties[:clearance] == true
      properties[:price] = (properties[:price] * 0.8).round(2)
    end
  end
  cart
  
end






def checkout(cart, coupons)
  # code here
  cart_consolidated = consolidate_cart(cart:cart)
  cart_couponsapplied = apply_coupons(cart:cart_consolidated, coupons: coupons)
  cart_clearanceapplied = apply_clearance(cart: cart_couponsapplied)
  cart_total = 0
  cart_clearanceapplied.each do |item, properties|
    cart_total += properties[:price] * properties[:count]
  end
  if cart_total > 100
    cart_total = (cart_total * 0.9).round(2)
  end
  cart_total
end

