class Santa
	
	attr_reader :ethnicity
	
	attr_accessor :age, :gender
	
	def initialize(gender, ethnicity)
	 puts "Initializing Santa instance ..."
	 @gender = gender
	 @ethnicity = ethnicity
 	 @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
     @age = 0
	end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def	eat_milk_and_cookies(cookie)
	puts "That was a good " + cookie + "!"
	end
	
	def celebrate_birthday
		@age += 1
	end
	def age
		@age 
		rand(0..140)
	end
	
	def get_mad_at(name)
		last_place = name
		puts "You know what you did #{name}!! Bad reindeer!! Go to the back of the line"
		@reindeer_ranking.delete(name)
		@reindeer_ranking[-1]= last_place
		p @reindeer_ranking
	end
	
end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]



    santa = Santa.new( example_genders, example_ethnicities)
    santa.get_mad_at("Vixen")
   # puts  santa.gender.sample
    #puts santa.ethnicity.sample
    santa.celebrate_birthday
   # puts santa.age
	santa.speak
	santa.eat_milk_and_cookies("choco")

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
40.times do 
    santa = Santa.new( example_genders, example_ethnicities)
    puts  santa.gender.sample
    puts santa.ethnicity.sample
    puts santa.age
	
end