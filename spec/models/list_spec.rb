require 'rails_helper'
require 'faker'

RSpec.describe List, type: :model do
  let(:list) { create(:list) }

  it { is_expected.to belong_to(:user) }
  it { is_expected.to have_many(:items) }

  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:user) }

  describe "attributes" do
    it "has title attribute" do
      expect(list).to have_attributes(title: list.title)
    end
  end
end
