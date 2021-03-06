require 'rails_helper'

RSpec.describe Subscription, type: :model do
  describe 'relationships' do
    it { should belong_to :package }
    it { should belong_to :customer }
  end
end
