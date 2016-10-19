##GPS 2.2 with YARITZ PEREZ and CHRIS MASSENGALE
## OCT 17, 2016

##PSUEDOCODE
# Method: create_grocery_list    to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# output: hash [what data type goes here, array or hash?]
# steps: 
  # [fill in any steps here]
  # Create and empty hash for our grocery list
  # Take the string input and break in to an array of individual items
  #  GO through EACH item in the array and assing a default quantity to the item 
     #default quantity = 1
  # Call print_grocery_list to print items in the grocery list.

def create_grocery_list(item_list)
  grocery_list = {}

  grocery_array = item_list.split(" ")

  grocery_array.each do |grocery_item|
    grocery_list[grocery_item] = 1
  end

  print_grocery_list(grocery_list)

  return grocery_list
end

# Method: add_item to add an item to a list
# input: hash, item name and optional quantity
# output:  true = if successful, false = if unsuccessful
# steps:
  #grocery_list[item_name] = quantity
  #FUTURE: quantity = 0 -- really should'nt be on list
  #FUTURE: quantity < 0 -- invald input

def add_item(grocery_list, item_name, quantity)
  grocery_list[item_name] = quantity
end

# Method: remove_item   to remove an item from the list
# input: hash, item_name
# output: true = if successful, false = if unsuccessful
# steps:  grocery_list.delete_if {|key, value| key >= "b" }   #=> {"a"=>100}
  # Delete item based on item_name. 
def remove_item(grocery_list, item_name)

  return false if !grocery_list.include?(item_name)

  grocery_list.delete_if {|item,quantity| item == item_name}
  return true #successful
end

# Method to update the quantity of an item
# input:  hash, item_name, new_quantity
# output: true = if successful, false = if unsuccessful
# steps:  
    #confirm matching key before making any update
    #grocery_list[item_name]=new_quantity
def update_quantity(grocery_list, item_name, new_quantity)
  return false if !grocery_list.include?(item_name)

  grocery_list[item_name]=new_quantity
  return true

end
# Method to print a list and make it look pretty  print_grocery_list
# input:  hash
# output: nicely formated string with hash contents
# steps:
  # Run through EACH hash key/value pair and print a neatly formated string
def print_grocery_list(grocery_list)
  puts "_____GROCERY LIST______"
  grocery_list.each_with_index do |item_quantity, index|
    puts "#{index}.   #{grocery_list.keys[index]}, qty: #{grocery_list.values[index]}"
  end
  puts "_______________________"

end


#DRIVER CODE

grocery_list = create_grocery_list("")

add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Onions", 1)
add_item(grocery_list, "Ice Cream", 4)
print_grocery_list(grocery_list)

remove_item(grocery_list, "Lemonade")

update_quantity(grocery_list, "Ice Cream", 1)

print_grocery_list(grocery_list)

# # What did you learn about pseudocode from working on this challenge?
  #   Its very helpful when it comes to working with a pair because you both 
  #   can be on the same page on what you want to make
  # # What are the tradeoffs of using arrays and hashes for this challenge?
  #   # Its helpful because you can store much more info ina cleaner way.
  # # What does a method return?
  #   A value that you made that method do.
  # # What kind of things can you pass into methods as arguments?
    # arguments are passes so you can pass in things that statisfy those
  #   # arguments.
  # # How can you pass information between methods?
  #   # Having gloabal variables is a way to pass info between methods.
  # # What concepts were solidified in this challenge, and what concepts are still confusing?
  #   Using more methods and having them work with one another. Like 
  #   calling a method inside another method.
