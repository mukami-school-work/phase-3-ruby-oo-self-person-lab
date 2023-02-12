class Person
    attr_reader :name

    def bank_account
        @bank_account
    end

    def bank_account= (value)
        @bank_account = value
    end

    def happiness
        @happiness
    end

    def happiness=(value)
        @happiness = [[0, value].max, 10].min
    end

    def hygiene
        @hygiene
    end

    def hygiene= (value)
        @hygiene = [[0, value].max, 10].min
    end

    def initialize(name= "Blake", bank_account= 25, happiness= 8, hygiene= 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def clean?
       if (self.hygiene > 7)
        true
       else
        false
       end
    end
    
    def happy?
        self.happiness > 7
    end

    def get_paid(amount)
        @bank_account = amount + bank_account
        string = "all about the benjamins"
        return string
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end