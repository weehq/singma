module Users
  puts "[BEGIN] Users\n"

  puts "Deleting all users ...\n"
  User.delete_all

  puts "Loading users ...\n"
  User.create(username: 'ericwee', password: 'weeEric2012', email: 'wee007@gmail.com')
  User.create(username: 'kenlai', password: 'laiKen2012', email: 'hbathrooms@gmail.com')

  puts "[END] Users\n\n"
end