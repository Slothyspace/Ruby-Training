module Card_Deck_Dealer

 class Card
   attr_reader :suit, :value
   def initialize
    @suit = " "
    @value = 0
   end
  def show
    #card suits will be represented with strings and values with intergers
    #method replaces value if applicable with more readable version
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
   return "#{value} of #{@suit}"
  end
 end

 super Deck < Card
  attr_accessor :cards_in_deck
  def initialize
    @cards_in_deck = []
  end
  def amount_in_deck
    return @cards_in_deck.length()
  end
  def draw
    #method to show card in deck at random but not remove it
    choice = @cards_in_deck[rand]
    choice = choice.show
    puts "#{choice}"
  end
  def remove
    #method to remove a card from deck without showing it
  end
 end
  
#test this method to make sure classes and loops are organized correctly
def build_deck
  $deck = Deck.new
  count = $deck.amount_in_deck
  #comment out loops until correct format is figured out
  #until count = 54
    suit = "Spades"
    value = 1
    ace_of_spades = Card.new(suit, value)
    $deck.@cards_in_deck.push(ace_of_spades)
    count = $deck.amount_in_deck
    puts count
    puts $deck.@cards_in_deck[0]
      
  #end
  end
  
end


















end
