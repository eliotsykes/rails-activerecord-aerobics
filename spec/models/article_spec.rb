require 'rails_helper'

RSpec.describe Article, :type => :model do
  
  context "attributes" do
    it "has headline" do
      create(:article, headline: "Clark Kent is Superman!")

      expect(Article.exists?(headline: "Clark Kent is Superman!")).to eq(true)
    end
  end

end
