class Dog < ActiveRecord::Base

  delegate :buyer, :to => :adoption

  # attr_accessor :name
  # attr_reader :breed, :age, :temperament, :price, :height, :weight, :group, :life_expectancy
  #
  # @@all = []
  #
  # def initialize(name:, age:, breed:, temperament:, price:, height:, weight:, group:, life_expectancy: )
  #   @name = name
  #   @age = age
  #   @breed = breed
  #   @temperament = temperament
  #   @price = price
  #   @height = height
  #   @weight = weight
  #   @group = group
  #   @life_expectancy = life_expectancy
  #   @@all << self
  # end

end
