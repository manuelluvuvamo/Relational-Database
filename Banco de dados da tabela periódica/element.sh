#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ -z $1 ]]; then
  echo "Please provide an element as an argument."

else
  if [[ $1 =~ ^[0-9]+$ ]]; then
    ELEMENT=$($PSQL "SELECT atomic_number, symbol, name, type, atomic_mass, boiling_point_celsius, melting_point_celsius FROM elements LEFT JOIN properties USING(atomic_number) LEFT JOIN types USING(type_id) WHERE atomic_number = $1")

  else
    ELEMENT=$($PSQL "SELECT atomic_number, symbol, name, type, atomic_mass, boiling_point_celsius, melting_point_celsius FROM elements LEFT JOIN properties USING(atomic_number) LEFT JOIN types USING(type_id) WHERE symbol = '$1' OR name = '$1'")

  fi

  if [[ -z $ELEMENT ]]; then
    echo "I could not find that element in the database."
  else
    echo "$ELEMENT" | while IFS="|" read ID SYMBOL NAME TYPE MASS BOILING MELTING; do

      echo "The element with atomic number $ID is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."

    done
  fi
fi
