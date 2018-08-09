# README

To add a new status message, in command line:
curl --request POST http://localhost:3000/api/v1/messages --data "message[body]=******New message here******&message[status_id]=1"
([status_id] must = 1. There is only one instance of a status. It can change from UP to DOWN - see below)

To update the status of Litmus, in command line: (true = Litmus is up, false = Litmus is down)
curl --request PATCH http://localhost:3000/api/v1/statuses/1 --data "status[currently_up]=******true or false******"

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
