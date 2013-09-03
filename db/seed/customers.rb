module Customers
  puts "[BEGIN] Customers\n"

  puts "Deleting all customers ...\n"
  Customer.delete_all

  puts "Loading customers ...\n"
  Customer.create(first_name: 'Liz', last_name: '', suburb: 'Dulwich Hill')
  Customer.create(first_name: 'Kaz', last_name: '', suburb: 'Turramurra')

  puts "[END] Customers\n\n"
end
