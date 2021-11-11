require 'rails_helper'

RSpec.describe Tea, type: :model do
  describe 'relationships' do
    it { should have_many :flavors }
    it { should have_many(:packages).through(:flavors) }
  end
end
