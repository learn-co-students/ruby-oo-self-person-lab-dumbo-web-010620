require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account
    # attr_accessor :happiness
    # attr_accessor :hygiene
    @@all = []
    def initialize(name, bank_account = 25)
        @name = name 
        @bank_account = bank_account
        @happiness = 8
        @hygiene = 8
        @@all << self 
    end

    def happiness
        @happiness 
    end 

    def happiness=(happiness) #setter 
        @happiness = happiness.clamp(0,10)
        #@happiness.clamp(0,10)
    end 

    def hygiene # getter
        @hygiene
    end

    def hygiene=(hygiene) #setter
        @hygiene = hygiene.clamp(0,10)
        #@hygiene.clamp(0,10)
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
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4

        # hygiene=(@hygiene += 4)
        # hygiene=(@hygiene += 4)  #sorta worked
        # self.hygiene + 4
        # @hygiene.clamp(1,10) + 4
        # hygiene=(@hygiene+4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2 
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end 

    def call_friend(name) 
        self.happiness += 3 
        name.happiness += 3  
        "Hi #{name.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -=2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness += 1
            self.happiness +=1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end 


    def self.all
        @@all
    end

end

Person.new("Bill")

# binding.pry
"hi"

