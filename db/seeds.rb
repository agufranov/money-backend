# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.create name: 'User 1'

w1 = u.wallets.create name: 'Card'
w2 = u.wallets.create name: 'Cash'

t1 = Type.create name: 'Food'
t2 = Type.create name: 'Electronics'
t3 = Type.create name: 'Transfer'

f1 = Flow.create type: t1, from: w2, sum: 1000
f2 = Flow.create type: t3, from: w1, to: w2, sum: 5000
