# your code goes here
class Person

    attr_reader(:name)
    attr_accessor(:bank_account, :happiness, :hygiene)

    #decide before assigning a data type how you need to manipulate the data.
def initialize(name,bank_account=25,happiness=8,hygiene=8)
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
    true 
    else false 
    end 
end

def clean?
    if @hygiene > 7
        true 
    else false
    end 
end 

def get_paid(salary) 
salary = 100

@bank_account = bank_account + salary 

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
    friend.happiness += 3 
    self.happiness = @happiness + 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
end 

def start_conversation(friend, topic)
if topic == 'politics'
    friend.happiness -= 2
    self.happiness -= 2 
    return "blah blah partisan blah lobbyist"
elsif topic == 'weather'
    friend.happiness += 1
    self.happiness += 1
    return "blah blah sun blah rain"
else topic == "other"
    return "blah blah blah blah blah"
end 
end 

end 