require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |item|
    if item == name
      return item
    end
  end
end


def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  output = {}
  cart.each do |item|
    item_name = item.key[0]
    if output[item_name]
      output[item_name][:count] += 1
    else
      output[item_name] = item[item_name]
      output[item_name][:count] = 1
    end
  end
  output
end
