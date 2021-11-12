# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Customers
customer1 = Customer.create(first_name: 'Sandy', last_name: 'Marks', email: 'sandy.marks@gmail.com', address: '123 Apple Street, Loveland, CO, 80504')
customer2 = Customer.create(first_name: 'Travis', last_name: 'Marks', email: 'travis.marks@gmail.com', address: '324 Willow Drive, Manteca, CA, 95361')
customer3 = Customer.create(first_name: 'John', last_name: 'Marks', email: 'john.marks@gmail.com', address: '479 Stanford Avenue, Summerville, SC, 10729')
customer4 = Customer.create(first_name: 'Timothy', last_name: 'Marks', email: 'timothy.marks@gmail.com', address: '745 24th Street, Norman, OK, 23456')
customer5 = Customer.create(first_name: 'Susan', last_name: 'Marks', email: 'susan.marks@gmail.com', address: '456 Squirrel Court, Salina, KS, 67584')
customer6 = Customer.create(first_name: 'Ashley', last_name: 'Marks', email: 'ashley.marks@gmail.com', address: '900 Cliff Drive, Boise, ID, 56740')
customer7 = Customer.create(first_name: 'Nick', last_name: 'Marks', email: 'nick.marks@gmail.com', address: '340 Magnolia Street, Bangor, WA, 98835')
customer8 = Customer.create(first_name: 'Danielle', last_name: 'Marks', email: 'danielle.marks@gmail.com', address: '865 Grizzly Avenue, Minot, ND, 56789')
customer9 = Customer.create(first_name: 'Sarah', last_name: 'Marks', email: 'sarah.marks@gmail.com', address: '944 Forest Drive, Missoula, MT, 85674')
customer10 = Customer.create(first_name: 'Alex', last_name: 'Marks', email: 'alex.marks@gmail.com', address: '269 River Road, Atlanta, GA, 27845')

#Teas
tea1 = Tea.create(title: 'English Breakfast', description: 'premium high grown blend of refined black teas with warm tones, an amber liquor and a smooth finish', temperature: 200, brew_time: '3 to 5')
tea2 = Tea.create(title: 'Constant Comment', description: 'secret recipe of black tea, rind of oranges and sweet spice', temperature: 200, brew_time: '2 to 4')
tea3 = Tea.create(title: 'Earl Grey', description: 'light and aromatic blend of fine black tea perfectly balanced with the distinctive flavour of bergamot, a citrus fruit', temperature: 205, brew_time: '2 to 4')
tea4 = Tea.create(title: 'Sleepy Time', description: 'perfectly balanced flavor from a blend of soothing herbs, including delicate chamomile, cool spearmint and fresh lemongrass', temperature: 200, brew_time: '4 to 6')
tea5 = Tea.create(title: 'Tension Tamer', description: 'this blend begins with eleuthero combined with peppermint, ginger and lemongrass', temperature: 200, brew_time: '4 to 6')
tea6 = Tea.create(title: 'Honey Vanilla Chamomile', description: 'blend of fine chamomile flavors in combination with creamy, nutty vanilla and golden honey', temperature: 200, brew_time: '4 to 6')
tea7 = Tea.create(title: 'Oolang', description: 'distinctive, semi-oxidized tea from Asia, with a warm and nutty flavor', temperature: 195, brew_time: '1 to 5')
tea8 = Tea.create(title: 'Chai', description: 'a modern twist on the classic, combining organic black tea with sweet and savory spices like cinnamon, cardamom and cloves', temperature: 210, brew_time: '4 to 5')
tea9 = Tea.create(title: 'Yerba Mate', description: 'a healthy and stimulating drink, rich and robust with earthy undertones and a smooth finish', temperature: 180, brew_time: '3 to 5')
tea10 = Tea.create(title: 'Green', description: 'premium green tea', temperature: 180, brew_time: '3')

#Packages
package1 = Package.create(title: 'Herbal')
package2 = Package.create(title: 'Black')
package3 = Package.create(title: 'Variety 1')
package4 = Package.create(title: 'Variety 2')

#Subscriptions
customer1.subscriptions.create(package: package1, price: 2200, status: 0, frequency: 3)
customer1.subscriptions.create(package: package2, price: 2100, status: 0, frequency: 3)
customer1.subscriptions.create(package: package3, price: 2300, status: 1, frequency: 0)
customer1.subscriptions.create(package: package4, price: 2500, status: 0, frequency: 3)
customer2.subscriptions.create(package: package1, price: 2200, status: 1, frequency: 0)
customer3.subscriptions.create(package: package2, price: 2100, status: 0, frequency: 1)
customer4.subscriptions.create(package: package4, price: 2500, status: 0, frequency: 2)

#Flavors
Flavor.create(package: package1, tea: tea4)
Flavor.create(package: package1, tea: tea5)
Flavor.create(package: package1, tea: tea6)
Flavor.create(package: package2, tea: tea1)
Flavor.create(package: package2, tea: tea2)
Flavor.create(package: package2, tea: tea3)
Flavor.create(package: package3, tea: tea5)
Flavor.create(package: package3, tea: tea8)
Flavor.create(package: package3, tea: tea10)
Flavor.create(package: package4, tea: tea1)
Flavor.create(package: package4, tea: tea7)
Flavor.create(package: package4, tea: tea9)
