require 'rails_helper'

RSpec.describe 'Subscription Api' do
  describe 'happy path' do
    it 'Adds a new subscription to a customer' do
      customer1 = Customer.create(first_name: 'Sandy', last_name: 'Marks', email: 'sandy.marks@gmail.com', address: '123 Apple Street, Loveland, CO, 80504')
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
      package1 = Package.create(title: 'Herbal')
      package2 = Package.create(title: 'Black')
      package3 = Package.create(title: 'Variety 1')
      package4 = Package.create(title: 'Variety 2')
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
      customer1.subscriptions.create(package: package1, price: 2200, status: 0, frequency: 3)
      customer1.subscriptions.create(package: package2, price: 2100, status: 0, frequency: 3)
      customer1.subscriptions.create(package: package3, price: 2300, status: 1, frequency: 0)
      customer1.subscriptions.create(package: package4, price: 2500, status: 0, frequency: 3)

      headers = { 'CONTENT_TYPE' => 'application/json' }

      get "/api/v1/customers/#{customer1.id}"

      expect(response.status).to eq(200)

      json = JSON.parse(response.body, symbolize_names: true)

      data = json[:data]
      expect(data).to be_a(Hash)
      expect(data.keys.size).to eq(3)
      expect(data).to have_key(:id)
      expect(data[:id]).to be_an(Integer)
      expect(data).to have_key(:type)
      expect(data[:type]).to be_a(String)
      expect(data).to have_key(:attributes)

      attributes = data[:attributes]
      expect(attributes).to be_a(Hash)
      expect(attributes.keys.size).to eq(1)
      expect(attributes).to have_key(:subscriptions)
      expect(attributes[:subscriptions]).to be_an(Array)

      subscriptions = attributes[:subscriptions]

      subscriptions.each do |subscription|
        expect(subscription).to be_a(Hash)
        expect(subscription.keys.size).to eq(2)
        expect(subscription).to have_key(:title)
        expect(subscription[:title]).to be_a(String)
        expect(subscription).to have_key(:status)
        expect(subscription[:status]).to be_a(String)
      end
    end
  end
end
