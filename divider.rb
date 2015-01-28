puts "Welcome to the DIVIDER app!  This app will divde two numbers.
First, which integer do you want divided (a.k.a., the numerator)?"
numerator = gets.chomp.to_i

puts "Second, what integer do you want to divide that number by (a.k.a., the
denominator)?"
denominator = gets.chomp.to_i

puts "#{numerator} divided by #{denominator} equals #{(numerator/denominator).to_i}
with a remainder of #{numerator%denominator}.  Isn't that cool?"