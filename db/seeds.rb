# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.destroy_all
OrderStatus.delete_all

Product.create!([{ name: "Macbook Air",  description: "Most awesome laptop ever!!", price: "10000"  },
					{ name: "Asus ZenBook",  description: "Great for work & study", price: "5000"  } ])

OrderStatus.create! ([ {id: 1, name: "In Progress"},
						 {id: 2, name: "Placed"},
						 {id: 3, name: "Shipped"},
						 {id: 4, name: "Cancelled"} ])

p "Created #{Product.count} products"
p "Created #{OrderStatus.count} order statuses"