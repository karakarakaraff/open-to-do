require 'rails_helper'
require 'faker'

RSpec.describe Item, type: :model do
  let(:list) { create(:list) }
  let(:item) { create(:item) }

  it { is_expected.to belong_to(:list) }

  it { is_expected.to validate_presence_of(:body) }
  it { is_expected.to validate_presence_of(:list) }

  describe "attributes" do
    it "has a body attribute" do
      expect(item).to have_attributes(body: item.body)
    end
  end
end
