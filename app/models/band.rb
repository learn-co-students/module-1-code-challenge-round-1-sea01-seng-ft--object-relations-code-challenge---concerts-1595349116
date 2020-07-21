class Band
    attr_accessor :name
    attr_reader :hometown
    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        a = Concert.all.select{|con| con.band == self }
    end

    #Band#play_in_venue(venue, date)
#takes a venue and date (as a string) as arguments, and 
#creates a new concert for the band in that venue on that date
def venue(venue,date)
    Concert.new(date,self,venue)
end

#Band#all_introductions
#returns an array of strings representing all the introductions for this band
#each introduction is in the form "Hello {insert city name here}!!!!!, 
#we are {insert band name here} and we're from {insert hometown here}"
def all_introductions
    a = Concert.all.select { |conce|conce.band == self }
    puts "Hello #{a[0].vanue.city}!!!!!, we are #{a[0].band.name} 
    and we're from #{a[0].band.hometown}"
    end
end


binding.pry