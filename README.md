# Address Book

## Features

* Authentication
  - does not confirm the email address. User can enter a bogus email as long as it matches format. ie: name@email.com
* Authorization
* Image upload
* Javascript search/filter
* Address on a contact are validated with Smarty Streets API  
  - listens for a key up that is on a 500 ms delay, checks to see if a complete address has been entered
  - after a complete address has been entered, the SS API is called to check if it is a valid address according to USPS
  - displays message to user if it is valid or invalid
