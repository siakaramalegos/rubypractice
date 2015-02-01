# 1. Using a loop, write a method that prints “What’s up?” ten times.

# 10.times do
#   puts "What's up?"
# end

# 2. Take a look at the loop below. What do you think the output will look like?
# I think it will put 0, 1, 2.. 5

# 6.times do |count|
#   puts count
# end

# Check out this array below. What method should we use to loop through each element?
# Use 'for item in array'

# array = [1,2,3,4,5]

# # for item in array
# #   puts item
# # end

# # Their answer
# array.each do |number|
#   puts number
# end

# Using loops, what would be two ways to produce the following output? (2 3 4 5)

# i = 2

# while i <= 5
#   puts i
#   i += 1
# end

# for n in 2..5
#   puts n
# end

# 5. The following code will run but something is strange here. How could this be improved?

# neighs = ["Virginia", "Grant", "Buck"]

# # neighs.each do |count|
# #   puts count
# # end

# for neigh in neighs
#   puts neigh
# end

# 6. How many times will the code below print “banana”?
# Only 6 because x is defined inside the loop.

# 6.times do
#   x = "banana"
#   puts x
# end

# puts x

# 7. How many times will the code below print “banana”? 7 times

# x = "apple"

# 6.times do
#   x = "banana"
#   puts x
# end

# puts x

# 8. How many times will the code below print “banana”? 6 times

# 6.times do
#   x = "banana"
#   puts x
# end
# x = "apple"
# puts x

# 9.  How could you produce the following output using a loop and the countdown array?

# countdown = [1, 2, 3, 4, 5]

# for count in countdown
#   puts countdown[-count]
# end
# puts "Blastoff!"

# 10. How could you produce the following output using a loop?

# for n in 1..3
#   puts "#{n} fish"
# end
# puts "blue fish"