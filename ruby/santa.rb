class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender,ethnicity)
		puts "initializing 🎅  instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! 🎅 Haaaappy holidays!❄️ ❄️ 🎄 ☃️ 🎄 ☃️ 🎄 ❄️ ❄️" 
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie 😋 🍪 🍼" 

	end

	def celebrate_birthday
		@age += 1
	end

	def age
		 rand = rand(0..140)
		 puts " 🎈 🎉 🎂 🍭 🎁  #{rand} 🎁 🍭 🎂 🎉 🎈"
	end

	def get_mad_at(name)
		last_place = name
		puts "Bad reindeer 😠 ! You know what you did #{name}. Now move to the back of the line #{name} 😠👉"
		@reindeer_ranking.delete(name)
		@reindeer_ranking[-1] = last_place
		p @reindeer_ranking
	end
end

#driver code
santa = Santa.new("male", "latin")
santa.eat_milk_and_cookies("chocolate chip")
santa.speak 
santa.get_mad_at("Vixen")
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A","philipino", "native american"]

100.times do 
    santa = Santa.new( example_genders, example_ethnicities)
    puts  santa.gender.sample
    puts santa.ethnicity.sample
    puts santa.age
	
end
=begin
trying methods:
santa = Santa.new
santa.eat_milk_and_cookies("chocolate chip")
santa.speak 

try the thing
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
p santas

try the thing
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
  puts santas
end
p santas
=end

=begin
trying more instances
santas = []
genders = ["male","female", "gender fluid", "rather not say"]
ethnicities = ["latin", "white", "native american", "german", "philipino"]
genders.length.times do |i|
	santas << Santa.new(genders[i], ethnicities[i])
	p santas
end
=end



