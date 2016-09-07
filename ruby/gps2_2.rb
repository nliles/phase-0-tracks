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



def create_list(items)
    grocery_list = {}
    list_items = items.split(' ')
    list_items.each do |item|
      grocery_list[item] = 1
    end 
   grocery_list
   print_list(grocery_list)
end 

def add_items(list,items,quantity)
    list[items] = quantity 
end 

def remove_items(list, items)
   list.delete(items)
end

def update_quantities(list, items, quantity)
    list[items] = quantity
end

def print_list(list)
  puts "Grocery list:"
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

list = create_list("apples oranges")
add_items(list,"pears",1)
remove_items(list, "oranges")
update_quantities(list, "apples", 2)
print_list(list)



# What did you learn about pseudocode from working on this challenge?
# I learned that using pseudocode and thinking/talking out the problem first really helps come up with the best solutions and saves time.
# I usually just like to dive into the challenge but when I pseudocode, I actually come up with the solution faster.

# What are the tradeoffs of using arrays and hashes for this challenge?
# For this challenge, we used a hash because it easily displayed the items and quantity in a key-value pair. It was the best option
# for the grocery list since each item needed a value. Using an array would not have provided the item with a quantity value.

# What does a method return?
# A method returns the value of the last statement.


# What kind of things can you pass into methods as arguments?
# You can pass both parameters and other methods as arguments.

# How can you pass information between methods?
# You can use other methods to pass information between methods if you are not using class structures.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# I think I became much more comfortable passing methods to other methods. I also think I 
# have a better understanding of return value, p, puts, and print.