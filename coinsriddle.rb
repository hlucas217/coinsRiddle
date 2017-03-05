#You place 100 coins heads up in a row and number them by position,
# with the coin all the way on the left No. 1 and the one on the rightmost edge No. 100. 
#Next, for every number N, from 1 to 100, you flip over every coin whose position is a multiple of N. 
#For example, first you’ll flip over all the coins, because every number is a multiple of 1. 
#Then you’ll flip over all the even-numbered coins, because they’re multiples of 2. 
#Then you’ll flip coins No. 3, 6, 9, 12 … And so on.

#What do the coins look like when you’re done? Specifically, which coins are heads down?

coin_array = Array.new(100) { "Heads" }

counter = 1

while (counter <= coin_array.length)
	
	(1..coin_array.length).each do |i|
		if (i % counter == 0) && (coin_array[i - 1] == "Heads")
			coin_array[i - 1] = "Tails"
				
		elsif (i % counter == 0) && (coin_array[i - 1] == "Tails")
			coin_array[i - 1] = "Heads"
			
		end
		
	end
	puts "Flips for multiple: #{counter} (below)"
	puts
	puts coin_array
	puts
	counter = counter + 1
end
		











