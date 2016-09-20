# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(email: 'test@demo.com',password: 'password',name: 'zeeshan')
user.articles.create(price: '100$',descricption: 'read me' )
user.articles.create(price: '100$',descricption: 'read me 1' )
user.articles.create(price: '100$',descricption: 'read me 2' )
user = User.create(email: 'shafiq@demo.com',password: 'password',name: 'shafiq')
user.articles.create(price: '100$',descricption: 'read me 2 from' )
user.articles.create(price: '100$',descricption: 'read me 2 from 1' )
user.articles.create(price: '100$',descricption: 'read me 2 from 2' )
