# Secret Santa App

# Get givers method
def givers_method
  puts "Exciting!  How many secret santas do you have?"
  num_santas = gets.chomp.to_i
  i = 1
  givers = []
  while i <= num_santas
    puts "What is the name of Santa #{i}?"
    givers.push(gets.chomp.to_s)
    i+=1
  end
  givers
end


# Matching method
def match_method (givers)
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

  # This if statement checks that the last giver's matching did not fail -
  # sometimes the last person's only eligible receiver was his/herself so
  # their match comes up as "nil".  If this happens, this piece of code
  # will call the method all over again as a retry.  This is recursion.
  if match_hash[givers[-1]]==nil
    match_method(givers)
  else
    match_hash
  end
end

# ********************* Beginning of code (not including method definitions)

puts "Welcome to the Secret Santa app!  Would you like to use your own list
of santas or use a default list already in the program? Type 'own' or 'default'."
answer = gets.chomp.to_s
# Builds list of givers either from user input or hard-coded default.
if answer == "own"
  givers = givers_method
elsif answer == "default"
  givers = ["Ruby", "Java", "Python", "Scratch", "Fortran"]
else
  puts "Hmm, that wasn't an option so we'll just use the default list."
  givers = ["Ruby", "Java", "Python", "Scratch", "Fortran"]
end
puts "Givers are #{givers}"

final_matching = match_method(givers)

puts "The matches are #{final_matching}"