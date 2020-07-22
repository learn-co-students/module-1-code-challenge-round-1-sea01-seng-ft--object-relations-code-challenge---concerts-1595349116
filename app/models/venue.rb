class Venue
    attr_accessor :title
    attr_reader :city
    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        a = Concert.all.select{|con| con.vanue == self }
    end

    def bands
        a = Concert.all.select{|con| con.vanue == self } 
        a.map{|ban|ban.band}
    end

    #Venue#concert_on(date)
#takes a date (string) as argument
#finds and returns the first concert on that date at that venue
#if there is no concert on that date at that venue, returns nil

def concert_on(date)
  
Concert.all.find{|conce| conce.date == date}

end
#Venue#most_frequent_band
#returns the band with the most concerts at the venue
def most_frequent_band

    @@all.max_by {|ban| ban.bands.length }
 
    
end

end