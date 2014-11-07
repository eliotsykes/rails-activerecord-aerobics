require 'rails_helper'

RSpec.describe Category, :type => :model do
  context "attributes" do
    it "has a name" do
      create(:category, name: "Plumbing Tools")
      expect(Category.exists?(name: "Plumbing Tools")).to eq(true)
    end
  end

  context "associations" do
    it "has and belongs to many products" do
      expect(Category.new).to have_and_belong_to_many(:products)
    end
  end
end
