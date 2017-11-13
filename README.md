# Project2-Amazon

A website where customers can order items from an online store.

## technologies used

Ruby, Rails

Used a gem called devise in order to allow people to create an account.

Used PostgreSQL to create relational databases between users, carts, and items in carts.

## features

People who aren't signed up can't view their cart.

Users can sign up as a customer.

You can add new items or edit current/new items.

After clicking checkout, cart will become empty.

## installation instructions
`git clone ` git@github.com:Amarinder1/Project2-Amazon.git

`bundle install`

`rails db:drop db:create db:migrate db:seed`

`rails s`
