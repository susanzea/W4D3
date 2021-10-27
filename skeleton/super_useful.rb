# PHASE 2
def convert_to_int(str)
  Integer(str)
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

class NoFruitError < StandardError; end
class DecaffeinatedError < StandardError; end

def reaction(maybe_fruit)
  begin
    if FRUITS.include?(maybe_fruit)
      puts "OMG, thanks so much for the #{maybe_fruit}!"
    else 
      raise NoFruitError
    end
  rescue NoFruitError
        # NoFruitError.new("This isn't fruity!")
        # raise NoFruitError.message
        if get_coffee == false
          raise DecaffeinatedError
        else
          feed_me_a_fruit
        end
    end
end

    # coffee == "coffee" ? feed_me_a_fruit : (puts "no, go away")

def get_coffee
  puts "give me coffee!!!"
  coffee = gets.chomp
  # raise DecaffeinatedError.new("this is just muddy water!") unless coffee == "coffee"
  # true
  return coffee == "coffee"
end


def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    raise "You haven't know me long enough, babe." if yrs_known <= 5
    raise "Tell me your name" if (name.length < 1) #|| (name.nil?)
    raise "Tell me you hobbies" if (fav_pastime.length < 1) 
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


b = BestFriend.new("David", 10, "running")
p b 