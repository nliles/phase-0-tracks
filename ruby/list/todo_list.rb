
class Todolist
    def initialize (todolist)
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

