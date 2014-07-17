# This file contains methods related to your shopping cart.
# You should complete it according to the instructions in the TODO comments
product = ""
def add_to_cart(cart, product)
  cart << product
  # TODO: you get a cart and a product. Add the product to the cart!
end

def cart_to_s(cart)
  cart * ", "
  # TODO: you get a cart, return a coma-separated String list of the contained products
end

def cart_total_price(cart, store_items)
    price = 0
    cart.each do |x|
      price += store_items[x]
    end
    return price

  # TODO: you get a cart and the store items with their prices. Return the total
  # price of the shopping cart
end
##VARIABLE PRODUCT.