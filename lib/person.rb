# your code goes here
require 'pry'

class Person
    # initialized with a name that can't be changed
    def initialize(name)
        @name = name
        @bank_account = 25            
        @happiness = 8
        @hygiene = 8 
    end
    
    attr_reader (:name), (:happiness)
    attr_accessor (:bank_account), (:hygiene)
    
    def check_happiness(new_happiness)
        if new_happiness > 10
            10
        elsif new_happiness < 0
            0
        else
            new_happiness
        end
    end

    def happiness=(new_happiness)
        @happiness = check_happiness(new_happiness) 
    end
    
    def check_hygiene(new_hygiene)
        if new_hygiene > 10
            10
        elsif new_hygiene < 0
            0
        else
            new_hygiene
        end
    end
     
    def hygiene=(new_hygiene)
        @hygiene = check_hygiene(new_hygiene)
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account = bank_account + salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        # new_hygiene = @hygiene + 4
        # @hygiene = hygiene=(new_hygiene)
                
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out #happiness by two points, decrease their hygiene by three points
        self.happiness += 2
        self.hygiene -= 3        
        # @happiness = happiness + 2
        # @hygiene = hygiene - 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -=2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end

