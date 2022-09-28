#My Ruby Notes
#!/usr/bin/env ruby


#This is a comment. It won't run as code in the program.

#Print something to the screen on a single line
print "This is a string."

#Puts something on the screen and adds a new line
puts "This is a string printed onto the screen."

#Variable
var1 = "This string will be stored into a container called var1."

#Gets some input from the user
puts "What is your name user?"
user = gets.chomp()

puts "So your name is " + user


#You can also do math
puts 1 + 1
puts -2 - 1
puts 2 * 2
puts 3 / 1
puts 2 ** 3
puts 9 % 3

#Boolean operators
#set them to true, false and also nil
#greater than or equal to as well
happy = false
trying = true
life = nil
a = 7
b = 6
c = 9
d = 8
e = 5
f = 5
a > b
c < d
e = f

#Methods/Same as functions in other languages
#some are built into ruby
puts var1.length
puts var1.downcase
puts var1.upcase
puts var1.reverse
puts a.to_s


#You can also create a new method that can be called during your program
def sayhi(user)
  puts ("Hello " + user)
end

sayhi(user)

#Arrays
#store a list of data in one container
puts "Your favorite things are: "
things = Array["Games", "Anime", "Sleep", "Food"]
puts things.sort #method that sorts the array in alphabetical order
puts things[2] #data in arrays are stored by index numbers starting from 0.



#Hashes
#store data pairs
status = {
  "Hunger" => "Hungry",
  "Thirst" => "Thirsty",
  "Bladder" => "Empty",
}

puts "Your current Status is: "
status.each { |x, y| puts "#{x}:#{y}"}


#control flow (if, else, elsif, when)
#runs code when conditions are met

puts "Are you happy right now?"
happy = gets.chomp()

if happy == true
  puts "I'm glad things are going well for you."
else
  puts "I'm so sorry, is there anything I can do for you?"
end

if a > b and d < c
  puts "Why is six afraid of seven?"
  puts "Because seven, eight, nine."
elsif e <= f
  puts "Also, dogs."
else
  puts "Nothing makes sense anymore."

end

#loops (for, while, do, case)









#case statments
#compare one piece of information to a bunch of others


def get_day_name(day)
  day_name = ""

case day
when "mon"
  day_name = "Monday"
when "tue"
  day_name = "Tuesday"
when "wed"
  day_name = "Wednsday"
when "thu"
  day_name = "Thursday"
when "fri"
  day_name = "Friday"
when "sat"
  day_name = "Saturday"
when "sun"
  day_name = "Sunday"
else
  day_name = "Invalid abbreviation"
end


  return day_name
end


puts "Today is " + get_day_name("thu")

#File
#Opening and manipulating files in ruby
File.open("Pokemon Fangame ideas.txt", "r") do |file|

 puts file.read

 for line in file.readlines()
   puts line
 end
end

#rescue
#catching errors in your programs so they don't crash.
begin
 num = 10 / 0
rescue ZeroDivisionError => e
 puts e
end

#class
#create your own datatypes in ruby
#datatypes are strings, integers, floatingpoint numbers etc...
class Video_game
  attr_accessor :title, :developer, :genre, :rating
end


#Long way
botw = Video_game.new()
botw.title = "Zelda: Breath of the Wild"
botw.developer = "Nintendo"
botw.genre = "Action Adventure"
botw.rating = 10

puts botw.title
puts botw.developer
puts botw.genre
puts botw.rating

#Short way with an initialize method
class Anime
  attr_accessor :title, :genre, :enjoy
  def initialize(title, genre, enjoy)
    @title = title
    @author = genre
    @enjoy = enjoy
  end
end

goblins = Anime.new("Goblin Slayer", "Dark Fantasy", true)

puts goblins.title


#Modules
#Create a group of methods
module Action
  def massage(area)
    puts "Ok I'm massaging your #{area}"
  end
  def hug(user)
    puts "*hugs #{user}*"
  end
end

include Action
Action.massage("shoulders.")
Action.hug("Tyree.")

#You can also use require_relative to include modules
#from other files
