module Users
  User.delete_all

  User.create(username: 'ericwee', password: 'weeEric2012', email: 'wee007@gmail.com')
  User.create(username: 'kenlai', password: 'laiKen2012', email: 'hbathrooms@gmail.com')
end