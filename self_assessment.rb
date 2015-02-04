#1.  Write a script that takes user input and passes it to a method as an argument and then displays
# it into the following concatenated string.
#    "Hello (name).  Nice to meet you."

# puts "Give me your name."
# name = gets.chomp.to_s
# puts "Hello #{name}. Nice to meet you."

# 2.  Correct the code below so it displays the sum of x, y, and z.

# def sum_numbers(x,y,z)
#   x+y+z
# end

# puts sum_numbers(1,2,3)

# 3.  Add to the code below so it displays "Don't forget to (to do item)." for each item.

# to_do = ["wash the car", "buy groceries", "finish homework", "pay the bills"]

# to_do.each do |item|
#   puts "Don't forget to #{item}."
# end

# 4. What is the return value of the following:
# A: It would be c + d, which is 16.

# def avg(a, b, c, d)
#   total =a + b + c + d
#   avg = total / 4
#   return c + d
# end

# avg(5, 8, 6, 10)

# 5.  What is the return value of the following
# A:  Sarah

# names = ['David', 'Trevor', 'Sarah', 'Mason']
# names[2]

# 6.  How do you add "bobcat" to this list of wild cat species?

# wild_cats= ['cheetah', 'lion', 'leopard', 'tiger']
# wild_cats.push("bobcat")
# puts wild_cats

# 7.  How do you retrieve the birthplace of user1?

# user1= {:firstname=> "Johnny", :lastname => "Begood", :gender => "male",
#   :dob => "08/21/1981", :birthplace => "Seattle, WA"}
# puts user1[:birthplace]

# 8. How do you add "Atlanta, GA " as the current city for user1 in the hash from question 8?

# user1 = {:firstname=> "Johnny", :lastname => "Begood", :gender => "male",
#   :dob => "08/21/1981", :birthplace => "Seattle, WA"}
# user1[:currentcity] = "Atlanta, GA"
# puts user1

# 9. How would you retrieve "y" in the following array?

# alpha_soup= ["c", "k", "y", "u"]
# puts alpha_soup[2]

# 10. How would you retrieve "14" in the following hash?

# alphabits= {"d" =>4, "k" => 14, "u" => 52}
# puts alphabits["k"]

# 11. Write a loop that continues to display random numbers between 1 and 10 until the number generated is 7.

# n = 1
# while n != 7
#   n = rand(1..10)
#   puts n
# end

# 12. Continuing from question 11 above, push each randomly generated number to an array.  Then use an each
# loop and a conditional statement inside to display the total amount of numbers that are under 6.  Then display \
# a statement that reads: "There are (total) numbers under 6."

# n = 1
# random_numbers = []
# while n != 7
#   n = rand(1..10)
#   random_numbers.push(n)
# end

# puts "#{random_numbers}"

# # # Using and each method, though it's less efficient.
# # count = 0
# # random_numbers.each do |number|
# #   if number < 6
# #     count += 1
# #   end
# # end

# # More efficient loop.
# count = random_numbers.count { |number| number < 6 }

# puts "There are #{count} numbers under 6."

# 13.  Write code to create a new instance of a Vehicle object and make it honk.

class Vehicle

  def initialize(color, type)
    @color = color
    @type = type   # car, truck, motorcyle, scooter, van
  end

  def honk
    puts "Beep!"
  end

end

prius = Vehicle.new("blue","Prius")
prius.honk