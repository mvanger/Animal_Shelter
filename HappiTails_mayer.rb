# DATA SCHEMA

class Animal
    attr_accessor :name, :breed, :age, :gender, :favorite_toys, :has_owner, :location
    def initialize(name, breed, age, gender, favorite_toys, has_owner, location)
      @names = name
      @age = breed
      @gender = gender
      @favorite_toys = favorite_toys
      @has_owner = has_owner
      @location = location
    end

    def is_avaiable?
      @has_owner.any? #
    end

end

class Client
  attr_accessor :name, :age, :gender, :kids, :pets
  def initialize(name, age, gender, kids)
    @name = name
    @age = age
    @gender = gender
    @kids = kids
    @pets = []
  end

  def number_pets
    @pets.count
  end

  def to_s
    return "#{@name} is a #{@age} year old #{@gender} with #{@kids} and #{pets}."
  end

end

# LOADS SEED DATA

roster = {}

roster[:clients] = []
roster[:animals] = []

roster[:clients] << Client.new("Jim", 27, "Male", 5)
roster[:clients] << Client.new("Sarah", 47, "Female", 1)
roster[:clients] << Client.new("Jill", 57, "Female", 0)
roster[:clients] << Client.new("Tom", 37, "Male", 2)
roster[:clients] << Client.new("ABANDONED", 00, "Unknown", 0)

roster[:animals] << Animal.new("Spot", "Dog", 4, "Male", "Chew Toy", false, "HappiTails")
roster[:animals] << Animal.new("Garfield", "Cat", 6, "Male", "Toy A", true, "HappiTails")
roster[:animals] << Animal.new("Snoopy", "Dog", 8, "Male", "Toy B", false, "Home")
roster[:animals] << Animal.new("Alf", "Alien", 22, "Male", "Toy D", true, "Home")
roster[:animals] << Animal.new("Hobbes", "Tiger", 7, "Male", "Slinky", false, "HappiTails")

# APPLICATION FUNCTIONALITY

puts "Welcome to the HappiTails Animal Log — or HAL :)"

puts "To begin, please type 1 for Client Menu or 2 for Manager Menu"

menu_selection = gets.chomp.to_i

if menu_selection == 1

  puts "Please type the number correspnding to the menu item you would like to selection: "
  puts "1 - See a list of all the animals available to adopt at the HappiTails Animal Shelter"
  puts "2 - To put your animal up for adoption at the HappiTails Animal Shelter"
  puts "3 - See a list of all the animals currently hosted at the HappiTails Animal Shelter"
  puts "4 - See a list of all the clients of the HappiTails Animal Shelter"

  client_menu_selection = gets.chomp.to_i

  if client_menu_selection == 1

    puts roster.animal[:animals].each {|animal| "#{@name} is a #{@type} year old #{@age} with #{@gender} and #{favorite_toys}"} #only put animals flagged as available for adoption

    #puts roster.animal[:animals].each {|animal| "#{@name} is a #{@type} year old #{@age} with #{@gender} and #{favorite_toys}"} #only put animals flagged as available for adoption

  elsif client_menu_selection == 2

    new_animal = {}

    puts "What is the name of your animal?"

    new_animal_name = gets.chomp

    puts "What type of animal are you putting up for adoption?"

    new_animal_type = gets.chomp

    puts "What is the name of your animal?"

    new_animal_age = gets.chomp

    puts "What is the gender of your animal?"

    new_animal_gender = gets.chomp

    puts "What is your animal's favorite toy?"

    new_animal_favorite_toy = gets.chomp

    push "Do you want HappiTails to host your animal during adoption?"

    new_animal_name = gets.chomp

  elsif client_menu_selection == 3

    puts roster[:animals] #only put animals housed in the shelter

  elsif client_menu_selection == 4

    puts roster[:clients]

  end

elsif menu_selection == 2

  puts "Please type the number correspnding to the menu item you would like to selection: "
  puts "1 - See a list of all clients (names, ages, gender, kids, number of pets)"
  puts "2 - Add a new client to the roster"
  puts "3 - See a list of all animals (names, breed, age, gender and their favorite toys)"
  puts "4 - Add a new animal to the roster"

  manager_menu_selection = gets.chomp.to_i

  if manager_menu_selection == 1

    puts "list of all clients (names, ages, gender, kids, number of pets)"

  elsif manager_menu_selection == 2

    puts "push a new client to the roster"

  elsif manaer_menu_selection == 3

    puts "list of all animals (names, breed, age, gender and their favorite toys)"

  elsif manager_menu_selection == 4

    puts "push a new animal to the roster"

  end

else

  Puts "Thanks for visiting HappiTails. Please come again!"

end