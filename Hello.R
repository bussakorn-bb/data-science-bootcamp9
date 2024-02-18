#RockPaperScissorsGame
game <- function() {
    #rps_options <- c("rock","paper","scissors")
    #computer_choice <- sample(hame_options,1)
    #computer_score <- 0
    #user_score <- 0
#greeting
    print("Welcome To The Rock Paper Scissors Game")
    flush.console()
    user_name <- readline("Please enter your name:")
    print(paste("Hi,",user_name,"!"))
    print("Do you want to play the game?")
    flush.console()
    play <- readline("yes or no:")

#game
    game_options <- c("rock","paper","scissors")
    computer_choice <- sample(game_options,1)
    computer_score <- 0
    user_score <- 0

   while ( play == "yes") {
    print("Pick 1 from these 3 hand signals: 'rock','paper','scissors'")
    flush.console()
    user_choice <- readline("Your hand signal:")
    print(paste("Your hand signal:", user_choice))
    print(paste("Computer's hand signal:", computer_choice))
        if(user_choice == "paper" & computer_choice == "rock" |
           user_choice == "rock" & computer_choice == "scissors"|
           user_choice == "scissors" & computer_choice == "paper") {
              print("You win :)")
              user_score <- user_score + 1
              }else if(user_choice == "rock" & computer_choice == "paper" |
                       user_choice == "scissors" & computer_choice == "rock" |
                       user_choice == "paper" & computer_choice == "scissors"){
                          print("You lost :(")
                          computer_score <- computer_score + 1
                          }else if(user_choice == computer_choice){
                              print("It's a tie!")
                              }else{
                                  print("Invalid input. Please enter only 'rock', 'paper', or 'scissors'")
                                  }
        print("Would you like to continue playing the game?")
        flush.console()
        play <- readline("yes or no:")
        }

    print(paste("Your scores:", user_score))
    print(paste("computer's scores:", computer_score))


    if(user_score > computer_score) {
      print("Congratulations! You won!")
    }else if(user_score < computer_score) {
      print("So sorry You lost T-T")
    }else {
      print("It's a tie!")
    }
    print("Have a good day!")
}
game ()
