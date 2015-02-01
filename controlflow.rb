# Write a program that asks for the user's first name and then last name.
# Then, have the program repeat back the full name as well as how many
# letters are in the user's full name.

# puts "What is your first name?"
# first = gets.chomp.to_s
# puts "What is your last name?"
# last = gets.chomp.to_s
# lettercount = first.length + last.length
# puts "Your full name is #{first} #{last} and you have #{lettercount} letters in your name."

# Write a program that asks the user to do some simple arithmetic (let's
# say 1 + 2, and 5 - 3) and lets them know if they got the question right.

# puts "What is 3 + 4?"
# answer = gets.chomp.to_i

# if answer == 7
#   puts "Great job!"
# else
#   puts "Sorry, that is incorrect."
# end

# puts "What is 8 - 3?"
# answer2 = gets.chomp.to_i

# if answer2 == 5
#   puts "Great job!"
# else
#   puts "Sorry, that is incorrect."
# end

# Write a program that asks the user for their favorite color. If the user answers blue
# OR green, the program tells the user "Good choice. That is a great color!" Otherwise,
# the program says "Really?" and then goes on to tell the user that that color (the
# program mentions the color by name) is really not its favorite.

# puts "What is your favorite color?"
# answer3 = gets.chomp.to_s

# if answer3 == "blue" || answer3 == "green"
#   puts "Good choice. That is a great color!"
# else
#   puts "Really? The color #{answer3} is really not my favorite."
# end

# Write a bartender program that asks us our order. Then, let’s have it ask how old we
# are. If you answer 21 or over, you’re good to go. If you are under 21, the program
# (bartender) tells you how many years you’ll need to wait until you’re legal.

# puts "How old are you?"
# answer4 = gets.chomp.to_i

# if answer4 >= 21
#   puts "You're old enough to drink!"
# else
#   puts "Sorry, you'll be old enough to drink in #{21-answer4} years."
# end

# Did your brother or sister ever copycat everything you said just to get under your
# skin? Man, was that annoying or what?! Let’s write a program that does the same thing.
# This annoying program can only be stopped if the user says “I’m  a dummy” because the
# program won’t repeat something so self deprecating!

answer5 = ""

while answer5 != "I'm a dummy"
  answer5 = gets.chomp.to_s
  puts answer5
end
