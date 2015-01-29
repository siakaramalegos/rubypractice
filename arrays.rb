# This method creates the song array
def awesome (username_array, username)
  awesome_array = []
  awesome_array.push(username + " " + username_array[0])
  awesome_array.push("Bo " + username_array[0])
  awesome_array.push("Banana fana")
  awesome_array.push("Fo " + username_array[1])
  awesome_array.push("Me my mo " + username_array[2])
  awesome_array.push(username)
  awesome_array
end

# This method creates the array of names that start with different letters
def names username
  # Array of first letters for funny names
  letters_array = ["B", "F", "M"]
  names_array = []

  # Looping over each of the letters in the letters array
  for letters in letters_array
    tempname=letters + username [1,username.length]
    names_array.push(tempname)
  end

  # Don't forget to put the thing to be returned last!
  names_array
end

name = "Sia"
# This says do the awesome method using the variables (names method on name)
# and name.
puts awesome(names(name), name)

puts "\nWelcome to my song generator! What is your name?"
name = gets.chomp.to_s

puts awesome(names(name), name)