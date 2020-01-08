# your code goes here
require 'pry'
class Person
    attr_accessor :bank_account
    attr_reader :name

    def initialize(name,bank_account = 25,happiness = 8,hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    
    def happiness=(happiness)
        if happiness > 10
            happiness = 10
        elsif happiness < 0
            happiness = 0
        end
        @happiness = happiness
    end

    def happiness
        @happiness
    end

    def hygiene=(hygiene)
        if hygiene > 10
            hygiene = 10
        elsif hygiene < 0
            hygiene = 0
        end
        @hygiene = hygiene
    end

    def hygiene
        @hygiene.clamp(0,10)
    end

    def happy?
        if self.happiness > 7
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
        @bank_account += salary
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -=3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        #binding.pry
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{name}. How are you?"
        #binding.pry
    end

    def start_conversation(convo_person,topic)
        if topic == 'politics'
            self.happiness -= 2
            convo_person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        end
        #binding.pry

        if topic == 'weather'
            self.happiness += 1
            convo_person.happiness += 1
            return "blah blah sun blah rain"
        end

        if topic == 'programming'
            return "blah blah blah blah blah"
        end
    end



end