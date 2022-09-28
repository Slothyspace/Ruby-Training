#!/usr/bin/env ruby
module Card_Deck_Dealer

 class Card_deck
   attr_accessor :card, :deck
   attr_reader :card_library, :selection
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

   #method to grab random card from hash without revealing it
   #and then remove from temporary deck (WIP)
   def draw
     puts @card_library.count
   end

   #method to rebuild deck from card library (WIP)
   def collect
     @deck = @card_library
   end

   #method to pick a random hash from array,
   #convert it to a readable sting and print it from card library (Working)
   def show_one
     @selection = @card_library.shuffle[0]
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
   end
   #method to show all cards in library in readable text (WIP)
   def show_all
     @card_library.each do |key, value|
       puts "#{key} #{value}"
     end
   end
  end
end

include Card_Deck_Dealer

deck = Card_deck.new
