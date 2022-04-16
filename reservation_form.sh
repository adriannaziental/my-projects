#!/bin/bash

# This script is a hotel reservation form. It asks a guest for some necessary details
# and if the form is filled properly, it saves the data in a file named guestlist.txt.

# Clear terminal.
clear

# Print: THIS IS A HOTEL RESERVATION FORM, PLEASE GIVE US THE FOLLOWING INFORMATIONS TO MAKE A RESERVATION.
echo "THIS IS A HOTEL RESERVATION FORM, PLEASE GIVE US THE FOLLOWING INFORMATIONS TO MAKE A RESERVATION"

# Ask for first name.
echo -n "First name: "
read firstname

# Ask for last name.
echo -n "Last name: "
read lastname

# Ask for phone number.
echo -n "Phone: "
read phone

# Ask for email address.
echo -n "Email address: "
read email

# Ask for arrival date.
echo -n "Arrival date [dd-mm-yyyy]: "
read arrival

# Ask for departure date.
echo -n "Departure date [dd-mm-yyyy]: "
read departure

# Print: Thank you for making a reservation. Write OK and click enter to confirm.
# Ask to write OK and click enter.
echo "Thank you for making a reservation. Write OK and click enter to confirm."
read x

# If statement: if ok or OK or Ok or oK written, print confirming message, create
# a guestlist.txt file and save all reservation details there; if not print: Your
# reservation failed. Please, fill in the form once again.
if [ $x == 'ok' -o $x == 'OK' -o $x == 'Ok' -o $x == 'oK' ]

then

clear

# Confirming message.
echo "$firstname, welcome in our hotel!
 
Thank you for making a reservation. Please, check if the following informations are correct.
Arrival date: $arrival
Departure date: $departure
Contact details:
$firstname $lastname
Email address: $email
Phone number: $phone
Thank you for making a reservation. See you on $arrival."

touch guestlist.txt
echo "$firstname $lastname" >> guestlist.txt
echo "Email address: $email" >> guestlist.txt
echo "Phone number: $phone" >> guestlist.txt
echo "Arrival date: $arrival" >> guestlist.txt
echo "Departure date: $departure" >> guestlist.txt
echo "-------------------------------------------------------------------" >> guestlist.txt

else
# Information about failed reservation.
echo "Your reservation failed. Please, fill in the form once again."
fi
