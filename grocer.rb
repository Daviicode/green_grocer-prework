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
  








  

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
