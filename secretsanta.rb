# TODO:  change to a method so if last one is matched to self, redo all matching.
# Secret Santa App

# Get list of names and put in array
givers = ["Sia", "Courtney", "Nicky", "Melissa", "Gigi"]
puts "Givers are #{givers}"

# Make a copy of givers to put in array  of eligible receivers which will
# remove members once they are selected as a receiver.
receivers = []
for giver in givers
  receivers << giver
end

# Shuffle receivers which will effectively give us a random match pairing.
receivers.shuffle!

# Create a new hash (dictionary) which will contain giver:receiver pairs.
match_hash = Hash.new

# For each giver in the array of givers, match them up with a receiver.
for giver in givers
  # Uncomment the next 2 puts lines if you want to watch what is happening.
  # puts "Giver is #{giver}"
  # puts "Eligible receivers are #{receivers}"
  i = 0
  match_made = false
  while match_made == false
    if giver == receivers[i]
      i += 1
    else
      match_hash[giver] = receivers[i]
      # Uncomment the next 2 lines if you want to watch what is happening.
      # puts match_hash
      # puts "----"
      receivers.delete(receivers[i])
      match_made = true
    end
  end
end

puts "The matches are #{match_hash}"