# your code goes here
require "pry"
class Person
      
    attr_reader(:name, :happiness, :hygiene )
    attr_accessor(:bank_account )
        

            def initialize (name,bank_account= 25,happiness = 8, hygiene = 8)
            @name = name 
            @happiness = happiness
            @bank_account = bank_account
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
        
        def happiness
        @happiness
        end 

        def hygiene=(hygiene)
          @hygiene = hygiene
            if @hygiene > 10
               @hygiene = 10
            elsif @hygiene < 0
                 @hygiene = 0
        
            end     
        end         
        def hygiene
         @hygiene
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
       @salary = salary
        @bank_account = @bank_account + @salary
        return "all about the benjamins"
    end 
    def take_bath
       
       self.hygiene = @hygiene + 4
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end 
    def work_out
      self.hygiene = @hygiene - 3
      self.happiness = @happiness + 2
      return "♪ another one bites the dust ♫"
    end 
    def call_friend(friend)
           self.happiness = @happiness + 3
           friend.happiness += 3
           return "Hi #{friend.name}! It's #{self.name}. How are you?"  
    end 
    
    def start_conversation(person,topic)
       

        if (topic == "politics")
            person.happiness = @happiness -2 
            self.happiness = @happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif(topic == "weather")
            person.happiness = @happiness + 1
            self.happiness = @happiness + 1 
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
         end 
    
    end 

end 