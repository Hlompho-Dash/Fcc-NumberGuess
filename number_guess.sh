#! /bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

echo -e "\nEnter your username: "

read USERNAME

PLAYER_ID=$($PSQL "SELECT player_id FROM players WHERE player_name='$USERNAME'")

if [[ -z $PLAYER_ID ]]
then 
  # WHAT TO DO IF WE CANNOT FIND THE USERNAME IN DATABASE
  TARGET=$(($RANDOM % 1000 + 1))
  echo -e "Welcome, $USERNAME! It looks like this is your first time here."
  echo -e "Guess the secret number between 1 and 1000:"
  read GUESS
  while [[ ! $GUESS =~ ^[0-9]+$ ]]
  do
    echo -e "That is not an integer, guess again:"; read GUESS
  done
  MOVES=1


  while [ $GUESS -ne $TARGET ]
  do
    if [[ $GUESS -gt $TARGET ]]
    then
      # WHAT TO DO IF TARGET IS LOWER THAN GUESS
      echo -e "It's lower than that, guess again:"; read GUESS
      while [[ ! $GUESS =~ ^[0-9]+$ ]]
      do 
        echo -e "That is not an integer, guess again:"; read GUESS
      done
      ((MOVES+=1))
    fi
    if [[ $GUESS -lt $TARGET ]]
    then
      # WHAT TO DO IF TARGET IS GREATER THAN GUESS
      echo -e "It's higher than that, guess again:"; read GUESS
      while [[ ! $GUESS =~ ^[0-9]+$ ]]
      do
        echo -e "That is not an integer, guess again:"
        read GUESS
      done
      ((MOVES+=1))
    fi
  done

  # ONLY GET HERE AFTER CORRECT GUESS
  echo -e "You guessed it in $MOVES tries. The secret number was $TARGET. Nice job!"

  # THEN INSERT INFORMATION IN DATABASE TO AVOID INSERTING IF GAME DOES NOT FINISH
  INSERT_PLAYER=$($PSQL "INSERT INTO players(player_name) VALUES ('$USERNAME')")
  PLAYER_ID=$($PSQL "SELECT player_id FROM players WHERE player_name='$USERNAME'")
  INSERT_PLAYER=$($PSQL "INSERT INTO games(player_id, target, moves) VALUES ($PLAYER_ID, $TARGET, $MOVES)")
else
  # WHAT TO DO IF WE FIND THE USERNAME IN THE DATABASE
  NUMBER_GAMES=$($PSQL "SELECT COUNT(*) FROM games WHERE player_id=$PLAYER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(moves) FROM games WHERE player_id=$PLAYER_ID")
  echo "Welcome back, $USERNAME! You have played $NUMBER_GAMES games, and your best game took $BEST_GAME guesses."

  echo -e "Guess the secret number between 1 and 1000:"
  TARGET=$(($RANDOM % 1000 + 1))
  read GUESS
  while [[ ! $GUESS =~ ^[0-9]+$ ]]
  do
    echo -e "That is not an integer, guess again:"; read GUESS
  done
  MOVES=1


  while [ $GUESS -ne $TARGET ]
  do
    if [[ $GUESS -gt $TARGET ]]
    then
      # WHAT TO DO IF TARGET IS LOWER THAN GUESS
      echo -e "It's lower than that, guess again:"; read GUESS
      while [[ ! $GUESS =~ ^[0-9]+$ ]]
      do 
        echo -e "That is not an integer, guess again:"; read GUESS
      done
      ((MOVES+=1))
    fi
    if [[ $GUESS -lt $TARGET ]]
    then
      # WHAT TO DO IF TARGET IS GREATER THAN GUESS
      echo -e "It's higher than that, guess again:"; read GUESS
      while [[ ! $GUESS =~ ^[0-9]+$ ]]
      do
        echo -e "That is not an integer, guess again:"
        read GUESS
      done
      ((MOVES+=1))
    fi
  done

  # ONLY GET HERE AFTER CORRECT GUESS
  echo -e "You guessed it in $MOVES tries. The secret number was $TARGET. Nice job!"

fi
