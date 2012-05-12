module Users
  User.delete_all

  User.create(username: 'ericwee', password: 'ericwee', email: 'wee007@gmail.com')
  User.create(username: 'kenlai', password: 'kenlai', email: 'hornsbybathroom@gmail.com')
end