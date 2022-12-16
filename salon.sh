#! /bin/bash

echo -e "\n~~~~~ MY SALON ~~~~~\n"

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"
CUT_SERVICE_ID=1
CUT_SERVICE_NAME="cut"
COLOR_SERVICE_ID=2
COLOR_SERVICE_NAME="color"
PERM_SERVICE_ID=3
PERM_SERVICE_NAME="perm"
STYLE_SERVICE_ID=4
STYLE_SERVICE_NAME="style"
TRIM_SERVICE_ID=5
TRIM_SERVICE_NAME="trim"
CUSTOMER_PHONE=""
CUSTOMER_NAME=""
APPOINTMENT_TIME=""

MAIN_MENU(){
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi

  echo "Welcome to My Salon, how can I help you?"
  echo -e "\n1) cut\n2) color\n3) perm\n4) style\n5) trim"
  read SERVICE_ID_SELECTED

  case $SERVICE_ID_SELECTED in
    1) CUT ;;
    2) COLOR ;;
    3) PERM ;;
    4) STYLE ;;
    5) TRIM ;;
    *) MAIN_MENU "I could not find that service. What would you like today?" ;;
  esac
}



CUT(){
  SERVICE_ACTION

  echo "What time would you like your $CUT_SERVICE_NAME, $CUSTOMER_NAME?"
  read SERVICE_TIME
  
  CUSTOMER_ID=$($PSQL "select customer_id from customers where phone='$CUSTOMER_PHONE'")

  INSERT_APPOINTMENT=$($PSQL "insert into appointments(customer_id,service_id,time) values($CUSTOMER_ID,$CUT_SERVICE_ID,'$SERVICE_TIME')")

  echo "I have put you down for a $CUT_SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
}

COLOR(){
  SERVICE_ACTION
  
  echo "What time would you like your $COLOR_SERVICE_NAME, $CUSTOMER_NAME?"
  read SERVICE_TIME

  CUSTOMER_ID=$($PSQL "select customer_id from customers where phone='$CUSTOMER_PHONE'")

  INSERT_APPOINTMENT=$($PSQL "insert into appointments(customer_id,service_id,time) values($CUSTOMER_ID,$COLOR_SERVICE_ID,'$SERVICE_TIME')")

  echo "I have put you down for a $COLOR_SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
}

PERM(){
  SERVICE_ACTION

  echo "What time would you like your $PERM_SERVICE_NAME, $CUSTOMER_NAME?"
  read SERVICE_TIME
  
  CUSTOMER_ID=$($PSQL "select customer_id from customers where phone='$CUSTOMER_PHONE'")

  INSERT_APPOINTMENT=$($PSQL "insert into appointments(customer_id,service_id,time) values($CUSTOMER_ID,$PERM_SERVICE_ID,'$SERVICE_TIME')")

  echo "I have put you down for a $PERM_SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
}

STYLE(){
  SERVICE_ACTION

  echo "What time would you like your $STYLE_SERVICE_NAME, $CUSTOMER_NAME?"
  read SERVICE_TIME
  
  CUSTOMER_ID=$($PSQL "select customer_id from customers where phone='$CUSTOMER_PHONE'")

  INSERT_APPOINTMENT=$($PSQL "insert into appointments(customer_id,service_id,time) values($CUSTOMER_ID,$STYLE_SERVICE_ID,'$SERVICE_TIME')")

  echo "I have put you down for a $STYLE_SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
}

TRIM(){
  SERVICE_ACTION
  
  echo "What time would you like your $TRIM_SERVICE_NAME, $CUSTOMER_NAME?"
  read SERVICE_TIME

  CUSTOMER_ID=$($PSQL "select customer_id from customers where phone='$CUSTOMER_PHONE'")

  INSERT_APPOINTMENT=$($PSQL "insert into appointments(customer_id,service_id,time) values($CUSTOMER_ID,$TRIM_SERVICE_ID,'$SERVICE_TIME')")

  echo "I have put you down for a $TRIM_SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
}

SERVICE_ACTION(){
  echo "What's your phone number?"
  read CUSTOMER_PHONE

  CUSTOMER_NAME=$($PSQL "select name from customers where phone='$CUSTOMER_PHONE'")

  if [[ -z $CUSTOMER_NAME ]]
    then
     echo "I don't have a record for that phone number, what's your name?"
     read CUSTOMER_NAME

     INSERT_CUSTOMER_RESULT=$($PSQL "insert into customers(phone,name) values('$CUSTOMER_PHONE','$CUSTOMER_NAME')")

  fi
  
}

MAIN_MENU
