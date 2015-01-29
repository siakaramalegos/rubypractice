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

def names username
  letters_array = ["B", "F", "M"]
  names_array = []

  for letters in letters_array
    tempname=letters + username [1,username.length+1]
    names_array.push(tempname)
  end

  names_array
end

name = "Sia"
puts awesome(names(name), name)

puts "\nWelcome to my song generator! What is your name?"
name = gets.chomp.to_s

puts awesome(names(name), name)