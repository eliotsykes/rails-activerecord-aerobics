require 'rails_helper'

RSpec.describe Country, :type => :model do

  context "attributes" do

    it "has a name" do
      create(:country, name: "Italy")
      expect(Country.exists?(name: "Italy")).to eq(true)
    end

  end
end
