# Secret Santa App

# Get list of names and put in array
givers = ["Sia", "Courtney", "Nicky", "Melissa", "Gigi"]
puts "givers are #{givers}"

# Make a copy
receivers = []
for giver in givers
  receivers << giver
end

receivers.shuffle!
puts "receivers are #{receivers}"

match_hash = Hash.new

for giver in givers
  puts "giver is #{giver}"
  i = 0
  match_made = false
  while match_made == false
    if giver == receivers[i]
      i += 1
    else
      match_hash[giver] = receivers[i]
      puts match_hash
      puts "----"
      receivers.delete(receivers[i])
      puts "Remaining receivers are #{receivers}"
      match_made = true
    end
  end
end

puts "------"
puts match_hash


# Match each giver with a receiver who is not themselves
# i = 0
# while i < givers.length
#   giver = givers[i]
#   puts "Giver = #{giver}"
#   puts "Receivers = #{receivers}"
#   #givers.pop

#   receivers.delete(giver)
#   receiver = receivers.sample
#   puts "The giver #{giver} will give a gift to #{receiver}"

#   puts "---"
#   receivers << giver
#   i += 1

# end


# Return matching