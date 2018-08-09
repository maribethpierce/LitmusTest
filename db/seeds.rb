# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
messages = Message.create([{ body: 'Message 1', status_id: 1 }, { body: 'Message 2', status_id: 1 }, { body: 'Message 3', status_id: 1 }, { body: 'Message 4', status_id: 1 }, { body: 'Message 5', status_id: 1 }, { body: 'Message 6', status_id: 1 }, { body: 'Message 7', status_id: 1 }, { body: 'Message 8', status_id: 1 }, { body: 'Message 9', status_id: 1 }, { body: 'Message 10', status_id: 1 }, { body: 'Message 11', status_id: 1 }])
statuses = Status.create([{ currently_up: true, singleton_guard: 0 }])