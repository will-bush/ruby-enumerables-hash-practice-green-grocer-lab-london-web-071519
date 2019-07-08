cart = [
  {"AVOCADO" => {:price => 3.00, :clearance => true }},
  {"AVOCADO" => {:price => 3.00, :clearance => true }},
  {"KALE"    => {:price => 3.00, :clearance => false}}
  ]
  
def consolidate_cart(cart)
  consolidated_cart_hash {}
  cart.each do
    |cart_item| 
    cart_item.each do |name, price|
      if consolidated_cart_hash[name].nil?
        consolidated_cart_hash[name] = price.merge({:count => 1})
      else
        consolidated_cart_hash[name][:count] += 1
      end
  end
  consolidated_cart_hash
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
