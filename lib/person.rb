require "pry"

class Person
attr_accessor :bank_account
    def initialize(name)
     @name = name
     @bank_account = 25
     @happiness = 8
     @hygiene = 8
    end
    def name 
        @name
    end 

    def happiness=(happiness)
        @happiness = happiness
    end 

    def happiness
        @happiness.clamp(0,10)
    end

    def hygiene=(hygiene)   
        @hygiene = hygiene     
    end 

    def hygiene 
        @hygiene.clamp(0,10)
    end 
    
    def happy?
         if happiness > 7
            true
         else 
            false 
         end
    end 

       def clean?
        if hygiene > 7
           true
        else 
           false 
        end
      end 

      def get_paid(salary)
        @bank_account+=salary
        return "all about the benjamins"
      end
    
      def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
      end

      def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"

      end

      def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3

        "Hi #{friend.name}! It's #{self.name}. How are you?"
      end

      def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain" 
        else 
            return "blah blah blah blah blah"
        end 
      end
  
end
    #binding.pry
    10
    
