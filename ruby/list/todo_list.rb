class TodoList

	def get_items
		@list
	end
	
	def initialize(list)
		@list = list

	end

	def add_item(item)
		@list.push(item)
	end

	def delete_item(item)
		@list.delete(item)
	end

	def get_item(index)
		@list.at(index)
	end
end