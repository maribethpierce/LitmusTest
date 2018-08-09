# README

## To add a new status message, in command line: 
(Leave *message[status_id]=1*. There is only one instance of a status. It can change from UP to DOWN - see below))
>

    curl --request POST http://localhost:3000/api/v1/messages --data "message[body]=******New message here******&message[status_id]=1"

----

## To update the status of Litmus, in command line: (true = Litmus is up, false = Litmus is down) 

>

    curl --request PATCH http://localhost:3000/api/v1/statuses/1 --data "status[currently_up]=******true or false******"

----
