#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

function MAIN_MENU(){
  if [[ $1 ]]
  then
    echo $1
  else
    echo "Enter your username:"
    read USERNAME
    USER_QUERY=$($PSQL "SELECT username FROM games WHERE username='$USERNAME'")
    if [[ -z $USER_QUERY ]]
    then
      # New user
      echo "Welcome, $USERNAME! It looks like this is your first time here."
    else
      # Know user
      GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE username='$USERNAME'")
      GAMES_PLAYED=$(echo $GAMES_PLAYED | sed -E 's/^ *| *$//g')
      BEST_GAME=$($PSQL "SELECT MIN(gueses) FROM games WHERE username='$USERNAME'")
      BEST_GAME=$(echo $BEST_GAME | sed -E 's/^ *| *$//g')
      echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
    fi
    NUMBER=$(($RANDOM%1000 + 1))
    echo "Guess the secret number between 1 and 1000:"
    read GUESS
    while [ $GUESS != $NUMBER ]
    do 
      NUMBER_OF_GUESES=$(( NUMBER_OF_GUESES + 1 ))
      if [[ $GUESS =~ ^[0-9]+$ ]]
      then
        if [[ $GUESS -lt $NUMBER ]]
        then
          echo "It's higher than that, guess again:"
        else
          echo "It's lower than that, guess again:"
        fi
      else
        echo "That is not an integer, guess again:"
      fi
      read GUESS
    done
    NUMBER_OF_GUESES=$(( NUMBER_OF_GUESES + 1 ))
    echo "You guessed it in $NUMBER_OF_GUESES tries. The secret number was $NUMBER. Nice job!"
    ADD_GAME=$($PSQL "INSERT INTO games(username, gueses) VALUES('$USERNAME', $NUMBER_OF_GUESES)")
  fi
}


MAIN_MENU $1
