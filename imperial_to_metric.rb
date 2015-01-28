puts "What is your name?"
my_name = gets.chomp

puts "What is your height in feet (without the inches)?"
height_feet = gets.chomp.to_i

puts "What are the remaining inches?"
height_inches = gets.chomp.to_i

total_height_inches = height_feet*12 + height_inches
height_cm = total_height_inches*2.54

puts "How much do you weigh in pounds?"
weight_pounds = gets.chomp.to_i

weight_kg = weight_pounds*0.43592

puts "#{my_name}'s height is #{total_height_inches} inches, or #{height_cm.to_i} centimeters."
puts "#{my_name}'s weight is #{weight_pounds} pounds, or #{weight_kg.round(1)} kg."