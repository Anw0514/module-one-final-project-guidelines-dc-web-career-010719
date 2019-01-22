require_relative '../config/environment'


puts "\n\n\n\n\n\n"

puts "Welcome to JSON Derulo's Dog Adoption Agency! \n"
puts "\nWhat is your name?"

name = gets.chomp

user = Buyer.create_or_find_by(name: name)

puts "\nHi, #{name}. Would you like to adopt a dog today? (y/n)"

answer = gets.chomp

if answer == "n"
  puts "\nCome back soon!"
elsif answer == "y"
  puts "\nGreat! Are you okay with a special needs dog?(y/n)"
  s = gets.chomp
  if s == "y"
    Dog.all.each do |dog|
      puts dog.name
    end
  elsif s == "n"
    Dog.not_special.each do |dog|
      puts dog.name
    end
  end
  puts "\nPlease enter the name of the dog you would like to adopt."
  chosen_one = gets.chomp
  user.adopt(chosen_one)
  puts "\nYou have adopted #{chosen_one}!"

end
