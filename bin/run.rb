require_relative '../config/environment'

i = 1
10.times do
  Dog.create(name: "Dog #{i}")
  i += 1
end
i = 1
3.times do
  Buyer.create(name: "Person #{i}")
  i += 1
end

ad = Buyer.all.sample.adopt(Dog.all.sample)

puts ad.buyer.name
puts ad.dog.name

puts "HELLO WORLD"
