#!/usr/bin/env ruby
module Card_Deck_Dealer

 class Card_deck
   attr_accessor :deck, :selection
   attr_reader :card_library
    #initialize to generate card deck library (Working)
   def initialize
    @deck = []
    @card = nil
    @continue = true

    #loop to create cards as hashes and store inside an array (Working)
    while @continue == true
     if @card == nil
       suit = "Spades"
       value = 1
       y = 0
     end
      @card = Hash["#{suit}"=>"#{value}"]
      @deck.push(@card)
      y += 1
      value += 1
     if y == 13
      suit = "Clubs"
      value = 1
     end
     if y == 26
      suit = "Hearts"
      value = 1
     end
     if y == 39
      suit = "Diamonds"
      value = 1
     end
     if y == 52
      suit = "Joker"
      value = 1
     end
     if y == 54
      @continue = false
      @card_library = @deck
     end
    end
   end
   
   #reset temp deck (WIP) (Needs testing)
   def reset_deck
     @deck = @card_library
   end

   #method to grab random card from array without revealing it
   #and then remove selected card from temporary deck (WIP) (Needs testing)
   def draw
     card_count = @deck.length
     random_num = rand(0..."#{card_count}")
     card_choice = @deck.["#{random_num}"]
     @selection = card_choice
     @deck = @deck.delete_at("#{random_num}")
     return @selection
   end
   
   #method to convert selected card into readable format (WIP)(Needs testing)
   def read_card
     if @selection != nil
       suit = @selection.keys
       value = @selection.values
       suit = suit.to_ary
       value = value.to_ary
       suit = suit[0].to_s
       value = value[0].to_i
       case suit
         when "Joker"
          if value == 2
            value = "Big"
          else
            value = "Little"
          end
       end
       case value
         when 11
           value = "Jack"
         when 12
           value = "Queen"
         when 13
           value = "King"
         when 1
           value = "Ace"
       end
         if suit == "Joker"
           puts "#{value} #{suit}"
         else
           puts "#{value} of #{suit}"
         end
      else
        puts "No card selected."
      end
    end
   end
 end
end

$deck = Card_deck.new

  #pull card from deck, remove it and then output it into readable text (WIP) (Needs Testing)
  def deal_one
    $deck.draw
    $deck.read_card
  end

 #method to pick a random hash from array and print it from card library (Needs testing)
  def show_random
     $deck.@selection = $deck.@card_library.shuffle[0]
     $deck.read_card
  end
end

include Card_Deck_Dealer

$deck.deal_one
$deck.show_random
