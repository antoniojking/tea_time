require 'rails_helper'

RSpec.describe Tea, type: :model do
  describe 'relationships' do
    it { should belong_to :flavors }
  end
end
