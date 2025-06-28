#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE teams, games;")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
  if [[ $YEAR != 'year' ]]
  then
    # Get winner id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'";)
    # If not found
    if [[ -z $WINNER_ID ]]
    then
      INSERT_WINNER_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")
      if [[ $INSERT_WINNER_TEAM_RESULT == 'INSERT 0 1' ]]
      then
        echo "Insert into teams, team: $WINNER"
      fi
      WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
    fi
  
    # Get opponent id
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';") 
    # If not found 
    if [[ -z $OPPONENT_ID ]]
    then
      # Insert opponent team
      INSERT_OPPONENT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")
      if [[ $INSERT_OPPONENT_TEAM_RESULT == 'INSERT 0 1' ]]
      then
        echo "Insert into teams, team: $OPPONENT"
      fi
      OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
    fi

    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS);")   
    if [[ $INSERT_GAME_RESULT == 'INSERT 0 1' ]]
    then
      echo "Insert into games, game: $YEAR $ROUND"
    fi 
  fi

  
done 


