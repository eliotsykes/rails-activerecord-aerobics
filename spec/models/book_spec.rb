require 'rails_helper'

RSpec.describe Book, :type => :model do
  
  context "attributes" do

    it "has a title" do
      create(:book, title: "Refactoring")
      expect(Book.exists?(title: "Refactoring")).to eq(true)
    end

  end

end
