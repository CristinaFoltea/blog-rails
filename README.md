Blog-Rails
===

This project is just a default rails backend for a blog. Clone it / fork it and add your own frontend.

To install:

* pull down the code
* run `bundle install`
* configure postgresql or switch to your prefered database in database.yml
* run
```
rake db:create
rake db:migrate
rake db:seed
rails s
```

This uses the cancan gem for authorization. In order to change roles for your blog, edit them in seeds.rb and reseed the database with `rake db:seed`

By default, the Admin role has full CRUD capabilities and Guests can only read Articles. To change this behavior or add permissions for other roles, edit ability.rb

Once you have registered a user, you can give your first user an Admin role with the following:

Open the console with `rails c`
```ruby
user = User.first
user.role_id = 1
user.save
```
Exit the console with `exit`
