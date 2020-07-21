require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#(name, hometown)
hiphop = Band.new("Hiphop","NY")
gullyboy = Band.new("Gullyboy","Mumbai")

#(title, city)
timesquare = Venue.new("Timesquare","NY")
liberty = Venue.new("Liberty","NY")
bandstand = Venue.new("Bandstand","Mumbai")

#(date,band,vanue)
concert1 = Concert.new("07/21/2020",hiphop,timesquare)
concert2 = Concert.new("07/21/2020",hiphop,liberty)
concert1 = Concert.new("07/21/2020",gullyboy,bandstand)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
