# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ranchhouse = House.create('ranchhouse', 'fancy')
beachhouse = House.create('rbeachhouse', 'gross')

bob = Cat.create(name: 'bob', house_id: 1)
