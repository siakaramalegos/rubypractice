class Cheetah
  def initialize (name, speed)
    @name = name
    @speed = speed
  end

  def speedy
    puts "Look at cheetah #{@name} go!  He's going #{@speed} mph!!"
  end
end

bob_the_cheetah = Cheetah.new("Bob", 50)
bob_the_cheetah.speedy
