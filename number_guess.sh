#!/bin/bash
NUMBER=$(($RANDOM%1000))
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"
GUESS_NUMBER=0
echo "Enter your username:"
read USERNAME
GUESS_COUNT=1
USER_ID=$($PSQL "select user_id from t_user where user_name = '$USERNAME'")
# user input
USER_TEST(){
  if [[ -z $USER_ID ]]
  then
    echo "Welcome, $(echo $USERNAME)! It looks like this is your first time here."
    ADD_USER_RESULT=$($PSQL "insert into t_user(user_name) values('$USERNAME')")
    USER_ID=$($PSQL "select user_id from t_user where user_name = '$USERNAME'")
  else
    GAMES_PLAYED=$($PSQL "select count(*) from guess_game where user_id = $USER_ID")
    BEST_GAME=$($PSQL "select min(guess_count) from guess_game where user_id = $USER_ID")
    echo "Welcome back, $(echo $USERNAME)! You have played $(echo $GAMES_PLAYED) games, and your best game took $(echo $BEST_GAME) guesses."
  fi
  GUESS
}


INPUT_CHECK(){
  read  GUESS_NUMBER
  while [[ !("$GUESS_NUMBER" =~ ^[1-9]+.) ]]
  do
    echo "That is not an integer, guess again:"
    read  GUESS_NUMBER
    GUESS_COUNT=$(($GUESS_COUNT + 1))
  done
}

GUESS(){
  echo Guess the secret number between 1 and 1000:
  INPUT_CHECK
  while ((GUESS_NUMBER != NUMBER))
  do
    if (( GUESS_NUMBER > NUMBER))
    then
      echo "It's higher than that, guess again:"
      INPUT_CHECK
    else
      echo "It's lower than that, guess again:"
      INPUT_CHECK
    fi
    GUESS_COUNT=$(($GUESS_COUNT + 1))
  done
  ADD_GAME_RESULT=$($PSQL "insert into guess_game(user_id,guess_count) values($USER_ID,$GUESS_COUNT)")
  echo  "You guessed it in $(echo $GUESS_COUNT) tries. The secret number was $(echo $GUESS_NUMBER). Nice job!"
}
USER_TEST
