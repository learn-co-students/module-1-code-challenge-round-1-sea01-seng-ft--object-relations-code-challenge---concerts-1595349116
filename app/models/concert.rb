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

        def hometown_show?
            self.band.hometown == self.vanue.city
        end

        
    def self.all_introductions
      


		self.all.each { |conce|
        puts "Hello #{vanue.city}!!!!!, we are #{band.name} 
        and we're from #{band.hometown}"}
     
	end
    end
    
    binding.pry