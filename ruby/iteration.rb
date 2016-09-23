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
	
random_names = ["Kobe", "Alaska", "Elijah", "Klaus", "Rebecca", "Felicity"]

random_names.each do |names| 
	index = 0 
		while index < random_names.length
			if (random_names[index] == random_names.length)
			random_names.delete(0)
end

p random_names


age = { 
	Kobe: "6", 
	Alaska: "17", 
	Elijah: "27",
	Klaus: "24",
	Rebecca: "19",
	Felicity: "22",
}







