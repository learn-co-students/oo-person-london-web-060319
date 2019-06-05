# your code goes here
require "pry"

class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happiness)
        @happiness = happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
        
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end

    def happy?
        if @happiness > 7
            TRUE
        else FALSE
        end
    end

    def clean?
        if @hygiene > 7
            TRUE
        else FALSE
        end
    end

    def get_paid(money)
        @bank_account += money
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
        
    end

    def work_out
        self.happiness = @happiness + 2
        self.hygiene = @hygiene - 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = @happiness + 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else "blah blah blah blah blah"
        end
    end
end

