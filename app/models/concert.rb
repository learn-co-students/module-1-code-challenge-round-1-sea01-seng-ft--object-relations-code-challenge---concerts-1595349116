class Concert
        attr_accessor :date, :band, :vanue
     
        @@all = []
    
        def initialize(date,band,vanue)
            @date = date
            @band = band
            @vanue = vanue
            @@all << self
        end
    
        def self.all
            @@all
        end

    #Concert#band
    #should return the Band instance for this concert
        def bandg
         a = Concert.all.select{|con| con == self }
         a[0].band
        end
    
        #Concert#venue
        #should return the Venue instance for this concert
           def venuee
            a = Concert.all.select{|con| con == self }
            a[0].vanue
        end
        #Concert#hometown_show?
        #returns true if the concert is in the band's hometown, false if it is not
        def hometown_show?
            self.band.hometown == self.vanue.city
        end

        #Concert#introduction
        #returns a string with the band's introduction for this concert
        #an introduction is in the form: "Hello {insert city name here}!!!!!, we are {insert band name here} and we're from {insert hometown here}"   
        def introductions
        a = Concert.all.select { |conce|conce == self }
        puts "Hello #{a[0].vanue.city}!!!!!, we are #{a[0].band.name} 
        and we're from #{a[0].band.hometown}"
        end
    end
    
    binding.pry