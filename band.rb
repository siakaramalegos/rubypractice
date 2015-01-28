puts "What's your favorite band?"
band = gets.chomp.to_s

def my_favorite_band band
  puts "My favorite band is #{band} too!!"
end

my_favorite_band band

def my_fav_musician(first,last)
  puts "My favorite musician is #{first} #{last} also!!  We are soooo much alike."
end

puts "What's your favorite musician's first name?"
first_name = gets.chomp.to_s
puts "What's your favorite musician's last name?"
last_name = gets.chomp.to_s

my_fav_musician(first_name,last_name)