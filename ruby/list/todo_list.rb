class TodoList

	def initialize(todolist)
		@todo_list = todolist
	end

	def get_items
		@todo_list
	end

	def add_item(item)
		@todo_list.push(item)
	end

	def delete_item(item)
		@todo_list.delete(item)
		@todo_list
	end

	def get_item(index)
		@todo_list[index]
	end

end
test = TodoList.new(["test1", "test2"])
p test.add_item("test3")
p test.get_items
p test.delete_item("test2")
p test.get_item(0)