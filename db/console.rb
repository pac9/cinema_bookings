require_relative('../models/customer')
require_relative('../models/film')
require_relative('../models/ticket')

require('pry')

customer1 = Customer.new({"name" => "Jan", "funds" => 20})
customer2 = Customer.new({"name" => "Celine", "funds" => 40})
customer3 = Customer.new({"name" => "Norma", "funds" => 10})
customer4 = Customer.new({"name" => "Kate", "funds" => 25})
customer5 = Customer.new({"name" => "Penny", "funds" => 15})

film1 = Film.new({"title" => "Jason Bourne", "price" => 5})
film2 = Film.new({"title" => "Dirty Dancing", "price" => 3})
film3 = Film.new({"title" => "Black Panther", "price" => 8})

ticket1 = Ticket.new({"customer_id" => customer1.id, "film_id" => film1.id })
ticket1 = Ticket.new({"customer_id" => customer1.id, "film_id" => film2.id })
ticket1 = Ticket.new({"customer_id" => customer2.id, "film_id" => film3.id })
ticket1 = Ticket.new({"customer_id" => customer3.id, "film_id" => film3.id })
ticket1 = Ticket.new({"customer_id" => customer4.id, "film_id" => film1.id })
ticket1 = Ticket.new({"customer_id" => customer4.id, "film_id" => film3.id })
ticket1 = Ticket.new({"customer_id" => customer5.id, "film_id" => film1.id })
ticket1 = Ticket.new({"customer_id" => customer5.id, "film_id" => film2.id })

binding.pry
nil
