require 'rails_helper'

RSpec.describe Package, type: :model do
  describe 'relationships' do
    it { should have_many :flavors }
    it { should have_many(:teas).through(:flavors) }
    it { should have_many :subscriptions }
  end
end
