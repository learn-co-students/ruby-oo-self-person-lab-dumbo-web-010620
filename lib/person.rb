
require 'pry'
# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_accessor :happiness
    attr_reader :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        
    end

    def happiness
        @happiness.clamp(0,10)
    end

    def hygiene=(hygiene)
        # @hygiene = hygiene.clamp(0,10)
        if hygiene > 10
            hygiene = 10
        elsif hygiene < 0
            hygiene = 0
        else
            hygiene
        end

        @hygiene = hygiene
        # if @hygiene
        #     @hygiene = 10
        # end
    end

    def happy?
        if @happiness > 7
        true
        else
        false
        end
    end

    def clean?
        @hygiene> 7 ? true : false
    end
    
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        
      self.hygiene += 4
    #   @hygiene > 10 ? 10 : @hygiene
    "♪ Rub-a-dub just relaxing in the tub ♫"  
        
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(callee, topic)
        if topic == 'politics'
            self.happiness -= 2
            callee.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness += 1
            callee.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end

end

# binding.pry
