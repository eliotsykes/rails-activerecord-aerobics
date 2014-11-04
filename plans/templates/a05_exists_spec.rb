require "rails_helper"

describe "exists? workout" do

  context "without arguments" do

    it "tells you if table is populated or not" do

      expect(Article.exists?).to eq(false)
      create(:article)
      expect(Article.exists?).to eq(true)#hide
      # expect(Article.exists?).to eq(YOUR_CODE_HERE)#show

      expect(Book.exists?).to eq(false)#hide
      # expect(Book.exists?).to eq(YOUR_CODE_HERE)#show
      create(:book)
      expect(Book.exists?).to eq(true)#hide
      # expect(Book.eYOUR_CODE_HERE?).to eq(true)#show

      expect(Country.exists?).to eq(false)#hide
      # expect(CoYOUR_CODE_HEREts?).to eq(false)#show
      create(:country)
      expect(Country.exists?).to eq(true)#hide
      # expect(Country.YOUR_CODE_HERE?).to eq(true)#show

      expect(Meeting.exists?).to eq(false)#hide
      # expect(YOUR_CODE_HERE).to eq(false)#show
      create(:meeting)
      expect(Meeting.exists?).to eq(true)#hide
      # expect(YOUR_CODE_HERE).to eq(YOUR_CODE_HERE)#show
    end

  end

end