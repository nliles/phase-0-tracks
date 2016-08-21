class Todolist
	def initialize todolist 
		@Todolist = todolist
	end 

def get_items
	@Todolist
end 

def add_item(item)
	@Todolist << item 
end 

def delete_item(item)
	@Todolist.delete(item)
end 

def get_item(index)
	@Todolist[index]
end

end

# add_item("mop")
# delete_item("do the dishes")
# retrieve_item(0)
# get_items
# class Dog  
#   def initialize(breed, name)  
#     # Instance variables  
#     @breed = breed  
#     @name = name  
#   end  
  
#   def bark  
#     puts 'Ruff! Ruff!'  
#   end  
  
#   def display  
#     puts "I am of #{@breed} breed and my name is #{@name}"  
#   end  
# end  