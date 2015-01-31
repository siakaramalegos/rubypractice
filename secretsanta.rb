# Secret Santa App

# Get list of names and put in array
givers = ["Sia", "Courtney", "Nicky", "Melissa", "Gigi"]

# Make a copy
receivers = []
for giver in givers
  receivers << giver
end

receivers.shuffle!

matches = []

for giver in givers
  i = 0
  while i < receivers.length
    if giver != receivers[i]
      matches.push(receivers[i])
      receivers.delete(receivers[i])
    end
    i+=1
  end
end


puts givers
puts "------"
puts matches



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