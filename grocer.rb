require 'pry'

def find_item_by_name_in_collection(name, collection)
 d = 0 
 while d < collection.length do
   item = collection[d][:item]
   if name === item
     return collection[d]
 end
   d += 1
 end
end

def consolidate_cart(cart)
new_cart = []
d = 0 
while d < cart.length do
  new_cart_item = find_item_by_name_in_collection(cart[d][:item], new_cart)
  if new_cart_item
    new_cart_item[:count] += 1 
  else 
    new_cart_item = {
      item: cart[d][:item],
      price: cart[d][:price],
      clearance: cart[d][:clearance],
      count: 1
    }
    new_cart << new_cart_item
  end
  d += 1 
end
new_cart
end

def apply_coupons(cart, coupons)
d = 1 
while d < coupons.length do 
  cart_item = find_item_by_name_in_collection(coupons[d][:item], cart)
  couponed_item_name = "#{coupons[d][:item]} W/COUPON"
  cart_item_with_coupon = find_item_by_name_in_collection(couponed_item_name, cart)
  if cart_item && cart_item[:count] >= coupons[d][:num]
  if cart_item_with_coupon
    cart_item_with_coupon[:count] += coupons[d][:num]
    cart_item[:count] -= coupons[d][:num]
  else
    cart_item_with_coupon = {
      item: couponed_item_name,
      price: 
    }
    
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
