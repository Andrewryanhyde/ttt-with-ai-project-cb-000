class TicTacToe

  def initialize

  end

  def play_game
    human_1 = Players::Human.new("X")
    computer_1 = Players::Computer.new("X")
    computer_2 = Players::Computer.new("O")


     puts "Welcome to Tic Tac Toe!"
     puts "- - - - - - - - - - - -"
     puts "Select your mode [0 = Computer vs Computer --- 1 = Computer vs Human) --- 2 = Human vs Human)"
     player_number = gets.chomp

     if player_number == "0"
       Game.new(computer_one, computer_two).play

     elsif player_number == "1"
       Game.new(human_one, computer_two).play

     elsif player_number == "2"
       Game.new.play

     else
       puts "Invalid mode, try again."
       start
     end

     end
     replay?
   end

   def replay?
     puts "Would you like to play again? [Y/N]"
     input = gets.chomp
     if input == "Y" || input == "y"
       play_game
     elsif input == "N" || input == "n"
       exit
     else
       puts "Invalid mode, try again."
       replay?
     end
   end
 end

end
