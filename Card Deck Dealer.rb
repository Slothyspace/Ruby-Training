module Card_Deck_Dealer

 class Card_deck
   attr_reader :cards
   def initialize
    @card_library = Hash.new
    @deck = []
    suit = "Spades"
    value = 1
    y = 1
    #loop to create cards inside a hash
    while suit != nil
      card = Hash[:"#{suit}"=>"#{value}"]
      @card_library = @card_library.merge(card)
      
      y += 1
      value += 1
     if y = 14 
      suit = "Clubs"
      value = 1
     end
     if y = 27
      suit = "Hearts"
      value = 1
     end
     if y = 40
      suit = "Diamonds"
      value = 1
     end
     if y = 50
      suit = Joker
      value = 1
     end
     if y = 53
      suit = nil
     end
    end
   end
   #method to grab random card from hash without revealing it
   def draw
    return @deck[rand]
   end
   #method to draw a random card and show it
   def show
    
   end
   
  end


 
  

  
end


















end
