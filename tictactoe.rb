#Tic Tac Toe Program for The Flatiron School admissions process

#I want to use an array to store the data. I'd like to make the
#display look like a tic-tac-toe board.
@board = [0, 1, 2, 3, 4, 5, 6, 7, 8]


#Figure out the victory conditions, should i put the variables in an array
#then iterate through the array to search for victory?
@win = 2


#Show the user the board, set it up so I don't have to keep pasting this code.
def display
	puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
	puts "-----------"
	puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
	puts "-----------"
	puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

#Start things up
puts "Welcome to tic-tac-toe, please take a look at the board..."
puts display

#This should actually make the game run.
until @win == 1 do
	puts "Please select which number space you would like to place your marker on."
	spot = gets.chomp.to_i

	while spot < 0 || spot > 8 
		puts "Please type an integer number for the space you would like to place your marker on"
		spot = gets.chomp.to_i
	end

	puts "Please type either 'X' or 'O' to make your play."
	play = gets.chomp.upcase

	
	@board[spot] = play

	@victory1 = @board[0].to_s + @board[1].to_s + @board[2].to_s
	@victory2 = @board[3].to_s + @board[4].to_s + @board[5].to_s
	@victory3 = @board[6].to_s + @board[7].to_s + @board[8].to_s
	@victory4 = @board[0].to_s + @board[3].to_s + @board[6].to_s
	@victory5 = @board[1].to_s + @board[4].to_s + @board[7].to_s
	@victory6 = @board[2].to_s + @board[5].to_s + @board[8].to_s
	@victory7 = @board[0].to_s + @board[4].to_s + @board[8].to_s
	@victory8 = @board[2].to_s + @board[4].to_s + @board[6].to_s
	@vicreq = [@victory1, @victory2, @victory3, @victory4, @victory5, @victory6, @victory7, @victory8]

		@vicreq.each do |cond| 
		if cond == 'XXX' || cond == 'OOO'
		 @win = 1
		end
		end

		if @win == 1
		puts "Congratulations, you have won!"
		else
		puts "Next Turn!"
		puts ""
    	end

	puts display
	end


#This is the turn sequence, it should be the meat of the code.
#This is also not in use, pasted the code into the loop.
def turn
	puts "Please select which number space you would like to place your marker on."
	spot = gets.chomp.to_i

	while spot < 0 || spot > 8 
		puts "Please type an integer number for the space you would like to place your marker on"
		spot = gets.chomp.to_i
	end

	puts "Please type either 'X' or 'O' to make your play."
	play = gets.chomp.upcase

	while play != X || play != O
		puts "Please type either 'X' or 'O' to make your play."
		play = gets.chomp.upcase
	end

	@board[spot] = play


end


#This is going to check for ties eventually,
#I haven't gotten all the base code working properly, so this is on hold.
def tie
	count = 0
	@board.each do |x| 
		end
end

#Method to check each turn if a player has won, 
#I just pasted the content into the loop. Not currently being used.
def victory
@vicreq.each do |x| 
	if x == XXX || OOO
	 @win = 1
	else
	 @win = 2
	end

	if @win == 1
	puts "Congratulations, you have won!"
	else
	puts "Next Turn!"
	puts ""
    end
  end
end
