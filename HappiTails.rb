require 'pry'

class Shelter
  attr_accessor :client, :animal
  def initialize
    @client = []
    @animal = []
  end
end

class Animal
  attr_accessor :name, :breed, :age, :gender, :favorite_toy #, :has_owner, :in_shelter
  def initialize (name, breed, age, gender, favorite_toy) #, has_owner, in_shelter)
    @name = name
    @breed = breed
    @age = age
    @gender = gender
    @favorite_toy = favorite_toy
    # @has_owner = has_owner
    # @in_shelter = in_shelter
  end

  def to_s
    puts "#{@name}, #{@breed}, #{@age}, #{@gender}, #{@favorite_toy}"
  end

end

class Client
  attr_accessor :name, :age, :gender, :number_kids, :number_pets, :wants_to_adopt, :wants_to_give_up
  def initialize (name, age, gender, number_kids, number_pets, wants_to_adopt, wants_to_give_up)
    @name = name
    @age = age
    @gender = gender
    @number_kids = number_kids
    @number_pets = number_pets
    @wants_to_adopt = wants_to_adopt
    @wants_to_give_up = wants_to_give_up
  end
  def adopt_pet(number_pets)

  end


end

happi_tails = Shelter.new
happi_tails.animal << Animal.new("Spot", "Dalmatian", 4, "male", "Chew toy")
happi_tails.animal << Animal.new("Rex", "Beagle", 7, "male", "Bone")
happi_tails.animal << Animal.new("Waffles", "Cat", 14, "female", "Tickle-me-Elmo")

happi_tails.animal.each {|x| puts x}

happi_tails.client << Client.new("Mike", 23, "male", 0, 0, true, false)
happi_tails.client[-1]



