# Method to create a list
# input: string of items and quantity
# steps: 
  # Create a method that accepts two parameters(item, quantity)
  # set default quantity (item = "item", quantity=0)
  # print the hash 
# output: hash

# Method to add an item to a list
# input: item name and optional quantity, list created in the prior method
# steps: create a method that will take the list created in the prior method and add an itme to that hash
# output: updated list with new item and quantity

# Method to remove an item from the list
# input: item and quantity to be removed, prior list
# steps: delete item and quantity in the existing list
# output: upadted listh with deleted item

# Method to update the quantity of an item
# input: item to update, new quantity, prior list
# steps: method that will update the quantity of an item of an existing list
# output: updated list with new quantity for an item

# Method to print a list and make it look pretty
# input: created list
# steps: print the list with items and quantities
# output: An organized list displaying each item with the quantity on separate lines

def create_list(items, quantity = 0)
  list_item = items.split(' ')
  grocery_list = {}
  list_item.each do |item|
    grocery_list["#{item}"] = "#{quantity}"
  end

  pretty_print(grocery_list)
  grocery_list
end

def add(list, item, quantity)
  list["#{item}"] = "#{quantity}"
  list
end

def delete(list, item)
  list.delete(item)
  list
end 

def update(list, item, quantity)
    list["#{item}"] = "#{quantity}"
   list
end

def pretty_print(list)
    "list of items" 
    list.each do |item, quantity|
    p "#{item}: #{quantity}"
   end
end


list = create_list("", 0)
add(list, "Lemonade", 2)
add(list, "Tomatoes", 3)
add(list, "Onions", 1)
add(list, "Ice cream", 4)
delete(list, "Lemonade")
update(list, "Ice cream", 1)


pretty_print(list)

