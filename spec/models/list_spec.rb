require 'rails_helper'
require 'faker'

RSpec.describe List, type: :model do
  let(:list) { create(:list) }

  describe "attributes" do
    it "has title attribute" do
      expect(list).to have_attributes(title: list.title)
    end
  end
end
