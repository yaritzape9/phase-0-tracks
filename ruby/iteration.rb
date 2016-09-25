breed_dogs = ["Huskies", "Poodles", "Corgies", "Chihauhas", "Terriers"]
breed_dogs.each {|dogs| puts "Types of dogs are #{dogs}"}

puts "Before .map"
p breed_dogs

breed_dogs.map! do |dogs|
	dogs + " (:"
end

puts "After .map"
p breed_dogs

dog_owners = { 
	Fernando: "Poodle",
	Estephanie: "Corgy",
	Rene: "Husky",
	Andrea: "Terrier",
	Oscar: "Chihauha",
}

dog_owners.each do |name, breed|
	puts "#{name} owns a #{breed}"
end
#delete method	

# random_nums = [1,5,7,3,8]

#1 

#arrays 

# random_nums.delete_if do |numbers| 
# 	if numbers < 5 
# 		true
# 	else 
# 		false
# 	end
# end

#hashes 

# random = { 
# 	"one": 1,
# 	"two": 2,
# 	"three": 3,
# 	"four": 4,
# 	"five": 5 
# } 

# random.delete_if do |word, number| 
# 	number < 2
# end 

#2

#arrays 

# random_nums.keep_if do |numbers| 
# 	if numbers < 5 
# 		true
# 	else 
# 		false
# 	end
# end 

#hashes 

# random = { 
# 	"one": 1, 	
# 	"two": 2,
# 	"three": 3,
# 	"four": 4,
# 	"five": 5
# }

# random.keep_if do |word, numbers|
# 	numbers < 3 
# end

#3 

#arrays 

# random_nums.select do |numbers|
# 	if numbers < 5 
# 		puts numbers
# 	end
# end 

#hashes 

# random = { 
# 	"one": 1,
# 	"two": 2, 
# 	"three": 3,
# 	"four": 4, 
# 	"five": 5
# } 

# random.select do |word, numbers| 
# 	numbers < 3
# end 

#4 

#arrays 

# random_nums.reject! do |numbers|
# 	if numbers < 5 
# 		true
# 	else 
# 		false
# 	end
# end 

# puts random_nums

#hashes 

random = { 
	"one": 1,
	"two": 2,
	"three": 3,
	"four": 4,
	"five": 5 
} 

random.reject! do |words, numbers| 
	numbers < 4 
end 
