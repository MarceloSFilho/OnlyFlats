# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
ser.create(
  { first_name: 'João', email: 'joao@hotmail.com', password: '123456' }
)



Flat.create(
  { title: 'Apartamento aconchegante', price: 100, user_id: 1 }
  #{ title: 'Casa espaçosa', summary: 'Casa ampla de 3 quartos', price_per_night: 200, user_id: 2 },
 # { title: 'Chalé nas montanhas', summary: 'Chalé rústico em meio à natureza', price_per_night: 150, user_id: 3 },
)


Booking.create(
  { start_date: Date.new(2023,03,10), end_date:  Date.new(2023,03,15),total_price:100, user_id: 1, flat_id: 1 }
 # { checkin_date: '2023-03-20', checkout_date: '2023-03-25', guest_number: 4, user_id: 2, flat_id: 1 },
 # { checkin_date: '2023-03-15', checkout_date: '2023-03-20', guest_number: 2, user_id: 3, flat_id: 3 },
)


#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
