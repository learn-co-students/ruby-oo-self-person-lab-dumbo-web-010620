class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
  
    def initialize(name)
      @name = name
      @happiness = 8
      @bank_account = 25
      @hygiene = 8
    end
  
    def happiness=(num)
      @happiness = num
      if @happiness > 10 
        @happiness = 10
      elsif @happiness < 0 
        @happiness = 0
    end
  end

  
    def hygiene=(num)
      @hygiene = num
      @hygiene = 10 if @hygiene > 10
      @hygiene = 0 if @hygiene < 0
    end

    def happy?
        if @happiness > 7
          true
        else
          false
      end
    end
      def clean?
        if @hygiene > 7
          true
        else 
          false
      end
    end
      def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
      end
    
      def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
      end
    
      def start_conversation(person, topic)
        objects = [self, person]
        if topic == "politics"
          objects.each { |o| o.happiness -= 2}
          first, second = ["partisan", "lobbyist"]
        elsif topic == "weather"
          objects.each { |o| o.happiness += 1}
          first, second = ["sun", "rain"]
        end
        first ||= "blah"
        second ||= "blah"
        base_string = "blah blah #{first} blah #{second}"
      end
    
      def get_paid(salary)
        self.bank_account += salary
        self.happiness += 1
        "all about the benjamins"
      end
    
      def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
      end
    
end
