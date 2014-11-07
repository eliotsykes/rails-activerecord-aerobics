require 'rails_helper'

RSpec.describe Product, :type => :model do
  
  context "attributes" do
    it "has a name" do
      create(:product, name: "Sink Unblocker")
      expect(Product.exists?(name: "Sink Unblocker")).to eq(true)
    end
  end

  context "associations" do
    it "has and belongs to many categories" do
      expect(Product.new).to have_and_belong_to_many(:categories)
    end
  end

end
