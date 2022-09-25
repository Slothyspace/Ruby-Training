module Card_dealer

class Card
  attr_accessor :suit, :value
  def initialize
   @suit = " "
   @value = 0
 end
 def show
  case @value
  when 1
  value = "Ace"
  when 11
  value = "Jack"
  when 12
  value = "Queen"
  when 13
  value = "King"
  end
  puts "#{value} of #{@suit}"
 end




















end
