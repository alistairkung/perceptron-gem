require 'matrix'

class Perceptron
  def self.create(features_number)
    @unit = Unit.new(features_number, Weight.new(features_number))
  end 
end 

require_relative './perceptron/unit'
require_relative './perceptron/weight'

