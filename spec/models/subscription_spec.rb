require 'rails_helper'

RSpec.describe Subscription, type: :model do
  describe 'relationships' do
    it { should have_many :flavors }
    it { should have_many(:teas).through(:flavors) }
    it { should have_many :plans }
    it { should have_many(:customers).through(:plans) }
  end
end
