class Buyer < ActiveRecord::Base
  has_many :adoptions
  has_many :dogs, through: :adoptions

  # attr_reader :name
  #
  # def initialize(name)
  #   @name = name
  # end
  #
  # def adoptions
  #   Adoption.all.select do |a|
  #     a.buyer == self
  #   end
  # end
  #
  # def dogs
  #   self.adoptions.collect do |a|
  #     a.dog
  #   end
  # end
  #
  def adopt(dog)
    Adoption.new(buyer: self, dog: dog)
  end


end
