#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"
echo -e "\n~~~~~ MY SALON ~~~~~\n"
echo "Welcome to My Salon, how can I help you?"
MAIN_MENU() {
  OPTIONS=$($PSQL "SELECT service_id,name from services")
  echo "$OPTIONS" | while read SERVICE_ID BAR NAME
  do
  echo -e "\n$SERVICE_ID) $NAME"
  done
}
read SERVICE
if [[]]