#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

RANDOM_NUMER=$(($RANDOM % 1000 + 1))
GUESS_COUNT=0

PLAY_GAME () {

  (( GUESS_COUNT++ ))

  read GUESS

  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else

    if [[ $GUESS -lt $RANDOM_NUMER ]]
    then
      echo "It's higher than that, guess again:"
    elif [[ $GUESS -gt $RANDOM_NUMER ]]
    then
      echo "It's lower than that, guess again:"
    else
      echo "You guessed it in $GUESS_COUNT tries. The secret number was $RANDOM_NUMER. Nice job!"
      UPDATE_USER=$($PSQL "UPDATE users SET games_played = games_played + 1, best_game = LEAST(best_game, $GUESS_COUNT) WHERE username = '$USERNAME';")
    fi

  fi

}

echo "Enter your username:"
read USERNAME

USER=$($PSQL "SELECT username, games_played, best_game FROM users WHERE username = '$USERNAME';")

# User não existe
if [[ -z $USER ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."

  INSERT_USER=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")

else
  # User existe
  echo "$USER" | while IFS="|" read NAME GAMES BEST_GAME
  do
    echo "Welcome back, $NAME! You have played $GAMES games, and your best game took $BEST_GAME guesses."
  done
fi


echo "Guess the secret number between 1 and 1000:"

PLAY_GAME

until [[ $GUESS = $RANDOM_NUMER ]]
do
  PLAY_GAME again
done