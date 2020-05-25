# TwO-O-Player Math Game

Two-player math game where each player takes turns answering random math questions. If they answer a question incorrectly, they lose a life. If either player loses three lives, the game is over.

## Example Output
Player 1: What does 5 plus 3 equal?
> 9
Player1: Seriously? No!
P1: 2/3 vs p2: 3/3
----- NEW TURN -----
Player 2: What does 2 plus 6 equal?
> 8
Player 2: YES! You are correct.
P1: 2/3 vs P2: 3/3
----- NEW TURN -----
... some time later ...
Player 1 wins with a score of 1/3
----- GAME OVER -----
Good bye!

## Classes

### Game Class
The Game object contains all of the game's logic, including the game loop. Other class objects are instantiated as properties within the game object.

The Game object's current_player variable holds the id of the player whose turn it is.

The Game object handles all input and output to the command line. When the player answers a question, the Game object passes that input to the Turn object.

After each turn, the game object prints the current score.

### Player Class
The Player objects keep track of each player's lives. One player is passed as an argument each time a new turn is initiated.

### Turn Class
The Turn object handles the turn logic. It recieves a Player object and initializes a new question. and receives the user's input, with which it calls the Question#answer method. If the Player answers incorrectly, the Turn object updates the Player's lives.

### Question Class
The Question object is responsible for generating questions and determining if the answers are correct.

The Question#answer method receives the player's answer from the Turn object and returns true if the answer is correct, or false if it is not.