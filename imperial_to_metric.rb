def get_name
  puts "What is your name?"
  #what if I want to puts something before the return?
  #Can i give it a variable and then put the variable last?
  username = gets.chomp.to_s
  puts "Welcome, #{username}!"
  username
end

def get_height
  puts "What is your height in feet (without the inches)?"
  height_feet = gets.chomp.to_i

  puts "What are the remaining inches?"
  height_inches = gets.chomp.to_i
  if height_inches > 11
    puts "Did you really mean #{height_inches}? (yes or no)"
    confirm = gets.chomp.to_s.downcase
    if confirm == "no"
      get_height
    end
  end

  total_inches = (height_feet*12 + height_inches)

  if total_inches.zero?
    puts "Are you real because your height is zero.  Please try again!"
    get_height
  elsif total_inches >=72
    puts "Oh you're a tall glass of water."
  else
    puts "Thanks!"
  end
  total_inches
end

def get_weight
  puts "How much do you weigh in pounds?"
  gets.chomp.to_i
end

my_name = get_name

total_height_inches = get_height

height_cm = total_height_inches*2.54

weight_pounds = get_weight
if weight_pounds <= 125
  puts "You need to eat more!"
else
  puts "Thanks!"
end

weight_kg = weight_pounds*0.43592

puts "Your height is #{total_height_inches} in, or #{height_cm.to_i} cm."
puts "Your weight is #{weight_pounds} lbs, or #{weight_kg.round(1)} kg."