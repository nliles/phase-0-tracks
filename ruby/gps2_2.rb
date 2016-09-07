# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split items
  # set default quantity to 1
  # create hash from items/quantity
  # print the list by sending the list to print method
# output: hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: method to add item to list that takes in item and quantity
# output: hash

# Method to remove an item from the list
# input: item to be removed
# steps: method to delete an item from a hash
# output: updated hash with deleted item

# Method to update the quantity of an item
# input: item, quantity
# steps: type key and update new quantity
# output: updated hash

# Method to print a list and make it look pretty
# input: list
# steps: method to print in an organized way
# output: final hash



def create_list(items, quantity=1)
    grocery_list = {}
    list_items = items.split(' ')
    list_items.each do |items|
      grocery_list[items] = quantity
    end 
   grocery_list
end 

def add_item(list,items,quantity)
    list[items] = quantity 
end 

def remove_item(list, items)
  list.delete(items)
end

def update_quantity(list, items, quantity)
  list[items] = quantity
end

def print_list(list)
 puts "Grocery List:"
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

list = create_list("apples oranges")
add_item(list,"pears",1)
remove_item(list, "apples")
update_quantity(list, "oranges", 3)
print_list(list)