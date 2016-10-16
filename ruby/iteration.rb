dog_breeds = ["Huskie", "Poodle", "Corgy","Labrador","Pug"]
#each,map 
dog_breeds.each do |i|
	puts i, "---"
end

dog_breeds.map! do |dogs|
	puts dogs + " :D"
end

dog_owners = {
		Briana: "Huskie",
		Sarah: "Pug",
		Ashlyn: "Labrador",
		Chris: "Poodle",
		Jordan: "Corgy"
}

dog_owners.each do |name,dog|
	puts "#{name} has a #{dog}"
end

random_nums = [1,2,3,4,5,6]

#  random_nums.delete_if do |numbers| 
# 	if numbers <= 3
# 		true
# 	else 
# 		false
# 	end
# end

# random_nums.keep_if do |numbers| 
# 	if numbers <=3 
# 		true
# 	else 
# 		false
# 	end
# end 

#  random_nums.select! do |numbers|
# 	 numbers > 2 
# end 

# random_nums.reject! do |num|
# 	num > 4
# end

#p random_nums
nums_word = {
	1 => "one",
	2 => "two",
	3 => "three",
	4 => "four",
	5 => "five"
}

# random_nums.delete_if do |number, word| 
# 	number < 4
# end 

# nums_word.keep_if do |numbers, words|
# 	numbers <= 3 
# end

# nums_word.select! do |numbers, words| 
# 	numbers < 4
# 	puts numbers
# end 

# nums_word.reject! do |num, word|
# 	num <= 4
# end

# p nums_word