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
        concerts.collect { |con|con.band } 
        #a = Concert.all.select{|con| con.vanue == self } 
        #a.map{|ban|ban.band}
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
binding.pry   
bands.max_by{|ban| ban.concerts.count}
#a = self.bands.reduce({}) { |count, band| count[band] ||= 0 && count[band] += 1 }
    #a.max_by{|band|band.concerts.count}
    #Venue.all.max_by{|venue|venue.concerts.count}
end    
end