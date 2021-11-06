require 'rails_helper'

RSpec.describe Subscription, type: :model do
  describe 'relationships' do
    it { should have_many :flavors }
    it { should have_many(:teas).through(:flavors) }
    it { should belong_to :customer }
  end
end
