require 'rails_helper'

RSpec.describe Plan, type: :model do
  describe 'relationships' do
    it { should belong_to :customer }
    it { should belong_to :subscription }
  end
end
