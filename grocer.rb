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
  new_cart = {}
  cart.each do |grocery, info|
    coupons.each do |coupon|
      if grocery == coupon[:item] && info[:count] >= coupon[:num]
        cart[grocery][:count] = cart[grocery][:count] - coupon[:num]
        if new_cart[grocery + " W/COUPON"]
          new_cart[grocery + " W/COUPON"][:count] += 1
        else
          new_cart[grocery + " W/COUPON"] = {:price => coupon[:cost], :clearance => cart[grocery][:clearance], :count => 1}
        end
      end
    end
    new_cart[grocery] = info

  end
  new_cart
end



  

def apply_clearance(cart)
  # code here
  clearance_cart = {}
  cart.each do |item, info|
    clearance_cart[item] = {}
    info.each do |datum|
      if cart[item][:clearance]
        clearance_cart[item][:price] = (cart[item][:price] * 0.80).round(2)
      else
        clearance_cart[item][:price] = cart[item][:price]
      end
      clearance_cart[item][:clearance] = cart[item][:clearance]
      clearance_cart[item][:count] = cart[item][:count]

    end
  end
  clearance_cart
  
end






def checkout(cart, coupons)
  # code here
  cart = consolidate_cart(cart: cart)

  cart = apply_coupons(cart: cart, coupons: coupons)
  cart = apply_clearance(cart: cart)
  total = 0
  cart.each do |item_name, item_data|
    total += (item_data[:price] * item_data[:count])
  end

  if total > 100
    0.9 * total
  else
    total
  end
end

