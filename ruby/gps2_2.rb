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
    p "Item/quantity: #{item}: #{quantity}"
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


# Reivew & Reflect: 
# What did you learn about pseudocode from working on this challenge?
# I used to not pay much attention to pseudocoding before. I wanted to dive into
# the challenge and I viewed pseudocoding to be something tedious and not necessarily
# that helpful. After using pseudocoding here, I can really understand how helpful
# it is to write out each step in detail. I think it helped me catch errors before
# they occurred and really helped me think out the problem and consider the best
# methods to use.

# What are the tradeoffs of using arrays and hashes for this challenge?
# I think a hash is definitely more useful for a challenge like this. It was easy
# to organize the list items and assign quantities to them using a hash. It was 
# also easier to print out the list in a clean way. I though it was a bit more
# difficult to split a string and insert into a hash. I had done that with arrays
# which was very simple but I felt that it was a bit more difficult to do using
# a hash. 

# What does a method return?
# # Every method returns a value. The returned value is the value of the last statement
# evaluated.

# What kind of things can you pass into methods as arguments?
# You can pass parameters through as arguments. You can specify how many parameters
# a method will accept. You can pass other methods through as parameters also.

# # How can you pass information between methods?
# # You can pass  information between methods by passing a method through another method as
# an argument.


# What concepts were solidified in this challenge, and what concepts are still confusing?
# I didn't feel very confident after reading the description of this challenge. I hadn't 
# passed data between different methods without using a class structure before and I thought
# that it would be more complicated than it was. It turned out to be pretty straight forward
# to do and I felt much better after the GPS session. I am still a bit confused about the
# string split, though. In my first method I split a string and added each item to a hash.
# This was straight forward but I would only be able to do it if all the items had the same
# quantity. I would like to see if I could also split the quantity parameter and add each
# quantity to the appropriate string.
















