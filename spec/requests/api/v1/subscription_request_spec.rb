require 'rails_helper'

RSpec.describe 'Subscription Api' do
  describe 'happy path' do
    it 'Adds a new subscription to a customer' do
      # customer = Customer.create()
      # subscription = Subscription.new()

      subscription_params = {
        subscription_title: "Variety1",
        customer_id: 1
      }

      headers = { 'CONTENT_TYPE' => 'application/json' }

      post '/api/v1/subscriptions', headers: headers, params: JSON.generate(subscription_params)

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
      expect(subscriptions).to be_a(Hash)
      expect(subscriptions.keys.size).to eq(2)
      expect(subscriptions).to have_key(:title)
      expect(subscriptions[:title]).to be_a(String)
      expect(subscriptions).to have_key(:status)
      expect(subscriptions[:status]).to be_a(String)
    end
  end
end
