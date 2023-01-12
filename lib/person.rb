# your code goes here

require 'pry'

class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    
    def happiness=(val)
        if val > 10 
            @happiness = 10
        elsif
            val < 0
            @happiness = 0
        else
            @happiness = val 
        end

        

    end
    
    def hygiene=(val)
        if val > 10 
            @hygiene = 10
        elsif
            val < 0
            @hygiene = 0
        else
            @hygiene = val 
        end
    end

     
        
        def clean?
            if self.hygiene > 7 
                true
            else 
                false
            end


        end

        def happy?
            if self.happiness > 7
                true
            else
                false
            end
        end

        def get_paid(amount)
        
            self.bank_account += amount
            "all about the benjamins"
        end

        def take_bath
        self.hygiene +=4
        "♪ Rub-a-dub just relaxing in the tub ♫"

        end

        def work_out
            self.happiness +=2
            self.hygiene -=3
            "♪ another one bites the dust ♫"
        end

        def call_friend(friend)
            self.happiness +=3
            friend.happiness +=3
            "Hi #{friend.name}! It's #{self.name}. How are you?"
        end

        def start_conversation(friend,topic)
            if topic == "politics"
            self.happiness -=2
            friend.happiness -=2
            "blah blah partisan blah lobbyist"
            elsif topic == 'weather'
                self.happiness +=1
                friend.happiness +=1
                "blah blah sun blah rain"
            else
                "blah blah blah blah blah"
            end
        end







    





        








end

binding.pry