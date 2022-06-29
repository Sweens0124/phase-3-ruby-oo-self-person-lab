# your code goes here
class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize name
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

    def happiness= num 
      if num > 10 
        @happiness = 10  
      elsif  num < 0 
        @happiness = 0
      else 
        @happiness = num
      end
    end

    def hygiene= num
      if num > 10 
        @hygiene = 10  
      elsif  num < 0 
        @hygiene = 0
      else 
        @hygiene = num
      end
    end

    def happy?
      @happiness > 7
    end

    def clean?
      @hygiene > 7
    end

    def get_paid amount
      self.bank_account += amount
      "all about the benjamins"
    end

    def take_bath 
      self.hygiene += 4
      '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
      self.hygiene -= 3
      self.happiness += 2
      "♪ another one bites the dust ♫"
    end

    def call_friend friend
      self.happiness += 3
      friend.happiness += 3
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation friend, topic
      if topic == "politics"
        friend.happiness -= 2
        self.happiness -= 2
        "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        friend.happiness += 1
        self.happiness += 1
        "blah blah sun blah rain"
      else topic == "other"
        "blah blah blah blah blah"
      end
      
    end
end