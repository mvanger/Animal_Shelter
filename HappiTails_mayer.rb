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

    puts "a list of animals flagged as available to adopt"

  elsif client_menu_selection == 2

    puts "push give your animal up for adoption"

  elsif client_menu_selection == 3

    puts "List of animals currently at the shelter"

  elsif client_menu_selection == 4

    puts "a list of all clients"

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