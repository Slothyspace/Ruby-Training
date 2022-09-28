#!/usr/bin/env ruby

class Actor
  attr_accessor :name, :hp, :att
  def initialize(name = " ", hp = 10, att = 0)
    @name = name
    @hp = hp
    @att = att
  end
  def roll
    critroll = rand(3)
    if critroll == 1
      puts "Critical Hit!"
      self.att = rand(1..3)
      self.att *= 2
    else
      self.att = rand(2)
    end
   end
end

you = Actor.new
foe = Actor.new

puts "What is your name player?"
you.name = gets.chomp()
puts "Welcome #{you.name}."
foes = ["wolf", "slime", "bandit"]
selectfoe = rand(3)

foe.name = foes[selectfoe]
foes.delete(selectfoe)

puts "#{you.name} is suddenly attacked by a #{foe.name}!"

while you.hp && foe.hp >= 0
  puts "What will you do?"
  puts "Please type in your choice."
  choice = ["fight ", "run\n"]
  choice.each { |x| print x }

  choice = gets.chomp()
  choice.downcase!
  case choice

    when "fight"
     puts "#{you.name} attacks!"
     you.roll
     gets.chomp()
      if you.att > 0
       puts "Dealt #{you.att} damage to the #{foe.name}."
      else
       puts "Miss!"
      end
     foe.hp -= you.att
     gets.chomp()
     puts "The #{foe.name} attacks!"
     foe.roll
     gets.chomp()
      if foe.att > 0
        puts "You took #{foe.att} damage."
      else
        puts "Miss!"
      end
      you.hp -= foe.att

    when "run"
     runcheck = rand(2)
     if runcheck == 1
      puts "You escaped!"
      return
     else
      puts "You tried to run but a #{foes[runcheck]} came out of nowhere and finished you off!"
      return
     end

    else
    puts "Can't do that."
    end

  if you.hp <= 0
  puts "You died."
  return
 elsif foe.hp <= 0
  puts "Victory!"
  return
 end
end
