# class Puppy

#   def initialize
#     puts "Initializing 🐶 instance"
#   end

#   def speak(bark)
#     "🐶 woof \n" * bark
#       #second way
#       # bark.times do
#       #   puts "Woof"
#       # end
#   end

#   def roll_over
#     "*Roll over* 🐶 🌀"
#   end

#   def dog_years(human_yrs)
#     dog_yrs = human_yrs * 7 
#     "👴 years: #{dog_yrs}"
#   end

#   def highfive
#     "Give me your paw!✋"
#   end
# end
# pups = Puppy.new
# puts pups.speak(4)
# puts pups.roll_over
# puts pups.dog_years(2)
# puts pups.highfive

class Gatos

  def initialize
    puts "Initializing 🐱 instance"
  end

  def catnip(taps)
    if taps == 3 
      "*🐱 comes over* \n *plays with catnip*"
    else
      "*🐱  doesn't want to come* \n It's lazy 💤  and not to smart🤓"
    end
  end

  def pets 
   "*Lays on back* \n 🐱  wants belly rubbed now"
  end
end
kitty_instances = Array.new

puts "-----------------------"
cat = Gatos.new
puts "Trying to give cat catnip: "
puts "Come here kitty kitty " + cat.catnip(3)
puts "Trying to give cat catnip: "
puts "Come here kitty kitty " + cat.catnip(2)
puts "Starts to pet cat " + cat.pets

index = 0
while index < 50
kitty_instances[index] = Gatos.new
p kitty_instances
index += 1
end

kitty_instances.each do |cat|
puts "-----------------------"
puts cat.catnip(3)
puts cat.catnip(2)
puts cat.pets
end





