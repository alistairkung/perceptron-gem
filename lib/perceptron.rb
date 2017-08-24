require 'matrix'

class Perceptron

  def self.create(features_number)
    @unit = Unit.new(features_number, Weight.new(features_number))
  end 

  def self.unit
    @unit
  end 
  
  def self.predictp(vector)
    @unit.predict(vector)
  end 

  def self.train(hash)
    @unit.train(hash)
  end

  def self.set_weight(array)
    @unit.weight.update(array)
  end 
end 

require_relative './perceptron/unit'
require_relative './perceptron/weight'

