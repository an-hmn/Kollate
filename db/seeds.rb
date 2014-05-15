# Reset the database
User.destroy_all

#----------------------------------------------------

# user's seed file
user = User.new(:username => 'annehomann', :email => 'anne@ga.co', :password => 'annetest', :password_confirmation => 'annetest')
user.admin = true
user.save
user2 = User.new(:username => 'test2', :email => 'test2@ga.co', :password => 'abcd1234', :password_confirmation => 'abcd1234')
user2.save
user3 = User.new(:username => 'test3', :email => 'test3@ga.co', :password => 'abcd1234', :password_confirmation => 'abcd1234')
user3.save

