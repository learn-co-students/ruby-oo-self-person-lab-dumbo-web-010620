require 'pry'
class Person
    attr_accessor :bank_account
    attr_reader :name, :hygiene, :happiness
    @@all = []
    def initialize(name)
        @name=name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @@all << self
    end

def happiness=(h_level)
    #binding.pry
    @happiness = h_level
    if @happiness > 10
        @happiness = 10
    elsif  @happiness < 0
        @happiness = 0
    end
end

def hygiene=(c_level)
    @hygiene = c_level
    if @hygiene > 10
        @hygiene = 10
    elsif  @hygiene < 0
            @hygiene = 0
    end
end


def clean?
    #return true if  hygiene > 7
    if hygiene > 7
        return true
    else
        return false
    end
end

def happy?
    #return true if  happiness > 7
    if happiness > 7
        return true
    else
        return false
    end
end

def get_paid(salary)
    @bank_account += salary
return "all about the benjamins"
end

def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
    self.hygiene -= 3
    self.happiness += 2
    '♪ another one bites the dust ♫'
end

def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
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

# def start_conversation(person,topic)
#     if topic == "politics"
#         person.happiness -= 2
#         self.happiness -=2
#     return 'blah blah partisan blah lobbyist'

# end

end
