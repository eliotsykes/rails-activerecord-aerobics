require "rails_helper"

describe ".exists? workout" do

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

  context "with Integer or String id argument" do

    it "tells you if record with the given primary key exists" do

      create(:meeting, id: 111)
      expect(Meeting.exists?(111)).to eq(true)
      expect(Meeting.exists?(111.to_s)).to eq(true)
      expect(Meeting.exists?(222)).to eq(false)#hide
      # expect(Meeting.exists?(222)).to eq(YOUR_CODE_HERE)#show
      expect(Meeting.exists?(222.to_s)).to eq(false)#hide
      # expect(Meeting.exists?(222.to_s)).to eq(YOUR_CODE_HERE)#show

      create(:country, id: 9876)
      expect(Country.exists?(9876)).to eq(true)#hide
      # expect(Country.exists?(YOUR_CODE_HERE)).to eq(true)#show
      expect(Country.exists?(9876.to_s)).to eq(true)#hide
      # expect(Country.YOUR_CODE_HERE(9876.to_s)).to eq(YOUR_CODE_HERE)#show
      expect(Country.exists?(1234)).to eq(false)#hide
      # expect(YOUR_CODE_HERE(1234)).to eq(false)#show
      expect(Country.exists?(1234.to_s)).to eq(false)#hide
      # expect(YOUR_CODE_HERE(YOUR_CODE_HERE.to_s)).to eq(false)#show

      create(:book, id: 1)
      expect(Book.exists?(1)).to eq(true)#hide
      # expect(YOUR_CODE_HERE(1)).to eq(true)#show
      expect(Book.exists?(1.to_s)).to eq(true)#hide
      # expect(YOUR_CODE_HERE(1.to_s)).to eq(true)#show
      expect(Book.exists?(2)).to eq(false)#hide
      # expect(YOUR_CODE_HERE(2)).to eq(false)#show
      expect(Book.exists?(2.to_s)).to eq(false)#hide
      # expect(YOUR_CODE_HERE(2.to_s)).to eq(false)#show
    end

  end

end