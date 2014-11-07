require 'rails_helper'

RSpec.describe Product, :type => :model do
  
  context "attributes" do
    it "has a name" do
      create(:product, name: "Sink Unblocker")
      expect(Product.exists?(name: "Sink Unblocker")).to eq(true)
    end
  end

end
