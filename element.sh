#!/bin/bash
# element
PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"
# check input
if [[ ! $1 ]]
  then
    echo  "Please provide an element as an argument."
else
  # checkout input type
  if [ "$1" -gt 0 ] 2>/dev/null ;then
    X=$1
    RESULT=$($PSQL "select * from elements left join properties on elements.atomic_number = properties.atomic_number left join types on types.type_id = properties.type_id where elements.atomic_number = $X ")
    if [[ -z $RESULT ]]
    then
      echo -e "I could not find that element in the database."
    else
      ATOMIC_NUMBER=$($PSQL "select properties.atomic_number from elements left join properties on elements.atomic_number = properties.atomic_number left join types on types.type_id = properties.type_id where elements.atomic_number = $X ")
      MELTING_POINT_CELSIUS=$($PSQL "select melting_point_celsius from elements left join properties on elements.atomic_number = properties.atomic_number left join types on types.type_id = properties.type_id where elements.atomic_number = $X ")
      GOILING_POINT_CELSIUS=$($PSQL "select boiling_point_celsius from elements left join properties on elements.atomic_number = properties.atomic_number left join types on types.type_id = properties.type_id where elements.atomic_number = $X ")
      ATOMIC_MASS=$($PSQL "select atomic_mass from elements left join properties on elements.atomic_number = properties.atomic_number left join types on types.type_id = properties.type_id where elements.atomic_number = $X ")
      TYPE=$($PSQL "select type from elements left join properties on elements.atomic_number = properties.atomic_number left join types on types.type_id = properties.type_id where elements.atomic_number = $X ")
      SYMBOL=$($PSQL "select symbol from elements left join properties on elements.atomic_number = properties.atomic_number left join types on types.type_id = properties.type_id where elements.atomic_number = $X ")
      NAME=$($PSQL "select name from elements left join properties on elements.atomic_number = properties.atomic_number left join types on types.type_id = properties.type_id where elements.atomic_number = $X ")
      echo -e "The element with atomic number $(echo $ATOMIC_NUMBER) is $(echo $NAME) ($(echo $SYMBOL)). It's a nonmetal, with a mass of $(echo $ATOMIC_MASS) amu. $(echo $NAME) has a melting point of $(echo $MELTING_POINT_CELSIUS) celsius and a boiling point of $(echo $GOILING_POINT_CELSIUS) celsius."
    fi
  else
    X=$1
    RESULT=$($PSQL "select * from elements left join properties on elements.atomic_number = properties.atomic_number left join types on types.type_id = properties.type_id where  elements.symbol = '$X' or elements.name = '$X' ")
    if [[ -z $RESULT ]]
    then
      echo -e "I could not find that element in the database."
    else
      # output
      ATOMIC_NUMBER=$($PSQL "select properties.atomic_number from elements left join properties on elements.atomic_number = properties.atomic_number left join types on types.type_id = properties.type_id where elements.symbol = '$X' or elements.name = '$X' ")
      MELTING_POINT_CELSIUS=$($PSQL "select melting_point_celsius from elements left join properties on elements.atomic_number = properties.atomic_number left join types on types.type_id = properties.type_id where elements.symbol = '$X' or elements.name = '$X'  ")
      GOILING_POINT_CELSIUS=$($PSQL "select boiling_point_celsius from elements left join properties on elements.atomic_number = properties.atomic_number left join types on types.type_id = properties.type_id where elements.symbol = '$X' or elements.name = '$X'  ")
      ATOMIC_MASS=$($PSQL "select atomic_mass from elements left join properties on elements.atomic_number = properties.atomic_number left join types on types.type_id = properties.type_id where elements.symbol = '$X' or elements.name = '$X'  ")
      TYPE=$($PSQL "select type from elements left join properties on elements.atomic_number = properties.atomic_number left join types on types.type_id = properties.type_id where elements.symbol = '$X' or elements.name = '$X'  ")
      SYMBOL=$($PSQL "select symbol from elements left join properties on elements.atomic_number = properties.atomic_number left join types on types.type_id = properties.type_id where elements.symbol = '$X' or elements.name = '$X'  ")
      NAME=$($PSQL "select name from elements left join properties on elements.atomic_number = properties.atomic_number left join types on types.type_id = properties.type_id where elements.symbol = '$X' or elements.name = '$X'  ")
      echo -e "The element with atomic number $(echo $ATOMIC_NUMBER) is $(echo $NAME) ($(echo $SYMBOL)). It's a nonmetal, with a mass of $(echo $ATOMIC_MASS) amu. $(echo $NAME) has a melting point of $(echo $MELTING_POINT_CELSIUS) celsius and a boiling point of $(echo $GOILING_POINT_CELSIUS) celsius."
    fi
  fi
fi
