# your code goes here
require 'pry'
class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene
  @@all = []

  def initialize(name, happiness = 8, hygiene=8)
    @name = name
    @bank_account = 25
    @happiness = happiness
    @hygiene = hygiene
    @@all << self
  end


  def happiness=(happy)
    if happy > 10
      @happiness = 10
    elsif happy < 0
      @happiness = 0
    else
      @happiness = happy
    end
  end

  def hygiene=(clean)
    if clean > 10
      @hygiene = 10
    elsif clean < 0
      @hygiene = 0
    else
      @hygiene = clean
    end
  end
  
  
  def happy?
    @happiness > 7 ? true : false
  end
  
  def clean?
    @hygiene > 7 ? true : false
  end
  
  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end
  
  def take_bath
    self.hygiene=(@hygiene + 4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

    def work_out
      self.hygiene=(@hygiene - 3)
      self.happiness=(@happiness + 2)
      return '♪ another one bites the dust ♫'
    end
    
    def call_friend(friend)
      self.happiness=(@happiness + 3)
      friend.happiness=(friend.happiness + 3)
      return "Hi #{friend.name}! It's #{@name}. How are you?"
    end
    
    def start_conversation(friend, topic)
      if topic == "politics"
        friend.happiness -=2
        self.happiness -=2
        return "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        friend.happiness +=1
        self.happiness +=1
        return "blah blah sun blah rain"
      else
        return "blah blah blah blah blah"
      end
    end

end
