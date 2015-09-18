###########
## SCOPE ##
###########

# There are 4 layers of variable scope in Ruby. They are:
# - Global variables
# - Class variables
# - Instance variables
# - Local variables
# We won't use global or class variables very much, but here we'll show you what they look like, along with instance and local variables which we'll use all the time

# Like its name says, this is a *global variable*. It's available literally everywhere in the program. We don't like that.
$this_is_a_global_var = "I'm available everywhere in the program! Yuck."

# Class definition
class Player

  # This is a *class variable*; it's available to this class, and all classes that inherit from this class
  @@count = 0

  def initialize(name, token)
    # Here, we are incrementing our class variable @@count so that every time a new Player is instantiated (created), the count goes up by 1
    @@count += 1

    # These are *instance variables*. They are available to other methods WITHIN the class definition only, and are specific to this instance of the class
    @name = name
    @token = token
  end

  def celebrate_dance
    # This is a local variable. It is only available within the specific method it was defined in.
    dance = "chicken dance"
    dance
  end

end

#######################
## GETTERS & SETTERS ##
#######################

# Because of how Ruby scope works, we aren't able to access instance variables from outside the class definition.
# As a result, we need some other way to be able to "get" (read) and "set" (change) instance variables on our objects.
# We use "getter" methods and "setter" methods to do this.

# Class definition
class Animal

  # We use the initialize method to set our instance variables at the time that the object is instantiated
  def initialize(name, legs, type)
    @name = name
    @legs = legs
    @type = type
  end

  # Getter method
  def name
    @name
  end

  # Setter method
  def name=(new_name)
    @name = new_name
  end

  # Getter method
  def legs
    @legs
  end

  # Setter method
  def legs=(new_legs)
    @legs = new_legs
  end

  # Getter method
  def type
    @type
  end

  # Setter method
  def type=(new_type)
    @type = new_type
  end

end

# Object instantiation
turtle = Animal.new("Speedy", 4, "Box Turtle")

# Using our "getter" methods to read the properties of the turtle object
p turtle.name # => "Speedy"
p turtle.legs # => 4
p turtle.type # => "Box Turtle"

# Using our "setter" methods to change the properties of the turtle object
turtle.name = "Slowpoke"
turtle.legs = 3

p turtle.name # => "Slowpoke"
p turtle.legs # => 3

#############################################
## attr_reader, attr_writer, attr_accessor ##
#############################################

# Rather than manually defining our getter and setter methods every time, there's a much shorter syntax that Ruby gives user.
# We can use attr_reader, attr_writer, and attr_accessor to create standard getters and setters for us.
# However, you won't be able to customize the getter and setter methods that are produced.

class Animal
  # attr_reader creates only "getter" methods. So here, we only have a "getter" method for @name
  attr_reader :name
  # attr_writer creates only "setter" methods. So here, we only have a "setter" method for @legs
  attr_writer :legs
  # attr_accessor creates both "getter" and "setter" methods. So here, we have both a "getter" and "setter" for @type.
  attr_accessor :type
  # You can comma separate the symbol names in the statements above to add more getter and setter methods

  def initialize(name, legs, type)
    @name = name
    @legs = legs
    @type = type
  end

end

################################
## CLASS VS. INSTANCE METHODS ##
################################

# There are 2 types of methods we can add to our objects: class and instance methods.
# Class methods are methods that are called on the class definition itself; these methods typically deal with a collection of objects, NOT 1 specific object.
# Instance methods are methods called on a specific instance of an object; they can't be called on the class itself, they deal with only the instance we're talking about.

class Player
  attr_accessor :name, :token
  attr_reader :wins

  def initialize(name, token)
    @name = name
    @token = token
    @wins = 0
  end

  # This is an instance method; it's only available to 1 particular *instance* of the class, NOT the class itself
  def win_game
    @wins += 1
  end

  # This is a class method; it's available to the class itself (Player), NOT the instances of the class
  # This particular class method accepts an array of Player objects, and loops through them to find the player with the most wins.
  def self.most_wins(players)
    players.max { |p1, p2| p1.wins <=> p2.wins }
  end

end

player1 = Player.new("Sean", "X")
player2 = Player.new("Mike", "O")

# Calling our instance method on player1 to increment their win count
player1.win_game

# Calling our class method "most_wins" to find the player with the most wins
p Player.most_wins
# => prints the player1 object, because player1 has more wins than player2


#################
## INHERITANCE ##
#################

# We can use inheritance to pass properties and methods from a "parent" class to a "child" class, in order to DRY up our code
# Inheritance lets us define a class with generic properties and methods (the "parent" class), and then have "child" classes inherit those properties and methods, while adding their own.

class Animal
  attr_accessor :name, :legs, :type

  def initialize(name, legs, type)
    @name = name
    @legs = legs
    @type = type
  end

  def sleep
    "Zzzzzzzz"
  end

  def eat
    "Om nom nom"
  end
end

class Dog < Animal

  def initialize(name)
    super(name, 4, "Dog")
  end

  def bark
    "Ruff ruff"
  end
end

class Corgi < Dog
  def initialize(name)
    @breed = "Corgi"
    super(name)
  end

  def corgi_things
    "whatever Corgis do"
  end
end

rover = Corgi.new("Rover")

p rover.name # => "Rover"
p rover.legs # => 4
p rover.type # => "Dog"
p rover.sleep # => "Zzzzzzzz"
p rover.eat # => "Om nom nom"
p rover.bark # => "Ruff"
p rover.corgi_things # => "whatever Corgis do"
p rover.class # => Corgi
