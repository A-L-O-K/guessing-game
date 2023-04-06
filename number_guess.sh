#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
RANDOM_NUMBER_GENERATED=$(( $RANDOM % 1000 + 1 ))
#echo $RANDOM_NUMBER_GENERATED

echo -e "\nEnter your username:"
read USERNAME

DB_USERNAME=$($PSQL "SELECT username FROM game_info WHERE username = '$USERNAME'")
if [[ -z $DB_USERNAME ]]
then
  INSERTED_USER=$($PSQL "INSERT INTO game_info(username) VALUES ('$USERNAME')")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."

else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM game_info WHERE username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(best_game) FROM game_info WHERE username = '$USERNAME'")
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

COUNT=0

RANDOM_NUMBER_GENERATOR(){
  read USER_GUESS


  while [[ $USER_GUESS =~ ^[+-]?[0-9]+$ && ! $USER_GUESS -eq $SECRET_NUMBER ]]
  do

    COUNT=$(expr $COUNT + 1)

    if [[ $USER_GUESS -gt $RANDOM_NUMBER_GENERATED ]]
    then

      echo -e "\nIt's lower than that, guess again:"
      read USER_GUESS

    elif [[ $USER_GUESS -lt $RANDOM_NUMBER_GENERATED ]]
    then

      echo -e "\nIt's higher than that, guess again:"
      read USER_GUESS

    else
      echo -e "\nYou guessed it in $COUNT tries. The secret number was $RANDOM_NUMBER_GENERATED. Nice job!"
      break
    fi
  done

  if [[ ! $USER_GUESS =~ ^[0-9]+$ ]]
  then
      echo "That is not an integer, guess again:"
      COUNT=$(expr $COUNT + 1)
      RANDOM_NUMBER_GENERATOR
  fi
}

echo -e "\nGuess the secret number between 1 and 1000:"
RANDOM_NUMBER_GENERATOR
INSERTED_GAME=$($PSQL "INSERT INTO game_info (username, best_game) VALUES ('$USERNAME', $COUNT)")
