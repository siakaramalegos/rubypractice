# Object-oriented programming

class StarbucksCup
  # Benefits - generally everything has to be inside of a method.  Don't have to worry about
  # putting all the methods up front.

  def initialize
    puts "Hey I'm alive!"
    # Put an instance variable here to have it accessible to all the methods in the class.
    # Initialize with no coffee in cup.
    @coffee_amount = 0
  end

  def fill
    puts "I'm filling with coffee!"
    @coffee_amount = 100
  end

  def empty
    puts "I'm empty."
    @coffee_amount = 0
  end

  def sip
    puts "Just took a sip."
    @coffee_amount -= sip_amount
  end

  def how_much_coffee
    puts "Your coffee cup is #{@coffee_amount}% full!"
  end

  def has_coffee?
    !@coffee_amount.zero?
  end

  # These are only available inside the class, not to user.
  private

  # Pretend this gets info from server.
  def sip_amount
    5
  end

end