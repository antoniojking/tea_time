require 'rails_helper'

RSpec.describe Flavor, type: :model do
  describe 'relationships' do
    it { should belong_to :tea }
    it { should belong_to :package }
  end
end
