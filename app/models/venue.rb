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
end
binding.pry