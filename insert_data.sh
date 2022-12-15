#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi


cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [ "$WINNER" == "winner" ]
  then
    continue
  fi

  TEAM_ID=$($PSQL "SELECT team_id from teams where name='$WINNER'")
  if [[ -z $TEAM_ID ]]
  then
    INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) values('$WINNER')")
    if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
    then
      echo unique team to the teams table.
    fi
  fi

  OPPONENT_TEAM_ID=$($PSQL "SELECT team_id from teams where name='$OPPONENT'")
  if [[ -z $OPPONENT_TEAM_ID ]]
  then
    OPPONENT_INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) values('$OPPONENT')")
    if [[ $OPPONENT_INSERT_TEAM_RESULT == "INSERT 0 1" ]]
    then
      echo unique team to the teams table.
    fi
  fi

  WINNER_ID=$($PSQL "SELECT team_id from teams where name='$WINNER'")
  OPPONENT_ID=$($PSQL "SELECT team_id from teams where name='$OPPONENT'")

  INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) values($YEAR,'$ROUND',$WINNER_ID,$OPPONENT_ID,$WINNER_GOALS,$OPPONENT_GOALS)")
  if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
  then
      echo Game Add
  fi
done
# Do not change code above this line. Use the PSQL variable above to query your database.

