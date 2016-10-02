grocery_list = {}
# Method to create a list
def string_to_hash(hash, grocery)#accept input as a string
	groceryarr = grocery.split(' ')
	groceryarr.each do |grocery| #split item an add them to our hash
		add_item(hash,grocery, 1)
	end
end

# Method to add an item to a list
def add_item(hash, grocery, quantity)
	hash[grocery] =  quantity # and set value to their quantity
end

# Method to remove an item from the list
def remove_item(hash, grocery)
	hash.delete_if{|k, v| k == grocery}#item they want to delete?
	#locate matching key name
	#deleting that key
end

# Method to update the quantity of an item
def quantity_update(hash, grocery, quantity)#ask user for item key they wish to change
	hash[grocery] = grocery #locating matching key
	hash[grocery] = quantity #updating value of that key
end

# Method to print a list and make it look pretty
def print_method(hash)
	hash.each do |grocery, quantity| #print out in in different line
	puts "In your bag you have #{quantity} #{grocery}" #mulitple lines of string
	end
end

string_to_hash(grocery_list,"corn carrot apples bananna")
add_item(grocery_list, "lemonade", 2)
add_item(grocery_list, "tomatoes", 3)
add_item(grocery_list, "onions", 1)
add_item(grocery_list, "ice cream", 4)
remove_item(grocery_list, "lemonade")
quantity_update(grocery_list, "ice cream", 1)
print_method(grocery_list)


# # What did you learn about pseudocode from working on this challenge?
# 	Its very helpful when it comes to working with a pair because you both 
# 	can be on the same page on what you want to make
# # What are the tradeoffs of using arrays and hashes for this challenge?
# 	# Its helpful because you can store much more info ina cleaner way.
# # What does a method return?
# 	A value that you made that method do.
# # What kind of things can you pass into methods as arguments?
	# arguments are passes so you can pass in things that statisfy those
# 	# arguments.
# # How can you pass information between methods?
# 	# Having gloabal variables is a way to pass info between methods.
# # What concepts were solidified in this challenge, and what concepts are still confusing?
# 	Using more methods and having them work with one another. Like 
# 	calling a method inside another method.