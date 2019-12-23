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
      item: cart[d][:item]
      price: 
    }
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
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
