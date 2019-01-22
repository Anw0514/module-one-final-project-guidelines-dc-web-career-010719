require_relative '../config/environment'


puts "Welcome to JSON Derulo's Dog Adoption Agency! \n"
puts "What is your name?"

name = gets.chomp

user = Buyer.create(name: name)

puts "Hi, #{name}. Would you like to adopt a dog today? (y/n)"

answer = gets.chomp

if answer == "n"
  puts "Come back soon!"
elsif answer == "y"
  puts "Great! Are you okay with a special needs dog?(y/n)"
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
end
