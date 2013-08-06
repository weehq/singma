module Users
  puts "[BEGIN] Users\n"

  puts "Deleting all users ...\n"
  User.delete_all

  puts "Loading users ...\n"
  User.create(username: 'admin', password: 'admin2013', email: 'admin@singma.com.au')
  User.create(username: 'ericwee', password: 'weeEric2013', email: 'wee007@gmail.com')
  User.create(username: 'tonywee', password: 'weeTony2013', email: 'tonywee@gmail.com')
  User.create(username: 'kenlai', password: 'laiKen2013', email: 'hbathrooms@gmail.com')

  puts "[END] Users\n\n"
end
