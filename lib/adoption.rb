class Adoption < ActiveRecord::Base
  # has_many :buyers, :dogs

  attr_reader :date, :dog, :buyer

  @@all = []

  def initialize(date, buyer, dog)
    @date = date
    @dog = dog
    @buyer = buyer
    @@all << self
  end
end
