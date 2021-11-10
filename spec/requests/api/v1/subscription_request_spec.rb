require 'rails_helper'

RSpec.describe 'Subscription Api' do
  describe 'happy path' do
    it 'Adds a new subscription to a customer' do
      customer1 = Customer.create(first_name: 'Sandy', last_name: 'Marks', email: 'sandy.marks@gmail.com', address: '123 Apple Street, Loveland, CO, 80504')
      tea4 = Tea.create(title: 'Sleepy Time', description: 'perfectly balanced flavor from a blend of soothing herbs, including delicate chamomile, cool spearmint and fresh lemongrass', temperature: 200, brew_time: '4 to 6')
      tea5 = Tea.create(title: 'Tension Tamer', description: 'this blend begins with eleuthero combined with peppermint, ginger and lemongrass', temperature: 200, brew_time: '4 to 6')
      tea6 = Tea.create(title: 'Honey Vanilla Chamomile', description: 'blend of fine chamomile flavors in combination with creamy, nutty vanilla and golden honey', temperature: 200, brew_time: '4 to 6')
      package1 = Package.create(title: 'Herbal')
      Flavor.create(package: package1, tea: tea4)
      Flavor.create(package: package1, tea: tea5)
      Flavor.create(package: package1, tea: tea6)

      subscription_params = {
        package_id: package1.id,
        customer_id: customer1.id,
        frequency: 3,
        price: 2200
      }

      expect(customer1.subscriptions).to eq([])
      expect(customer1.subscriptions.size).to eq(0)

      headers = { 'CONTENT_TYPE' => 'application/json' }

      post '/api/v1/subscriptions', headers: headers, params: JSON.generate(subscription_params)

      expect(response.status).to eq(201)
      expect(customer1.subscriptions.size).to eq(1)

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
