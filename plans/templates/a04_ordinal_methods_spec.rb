require "rails_helper"

describe "ordinal methods workout", focus: true do

  before do
    @new_zealand = create(:country, id: 15, name: "New Zealand")
    @iceland = create(:country, id: 77, name: "Iceland")
    @hungary = create(:country, id: 4, name: "Hungary")
    @brazil = create(:country, id: 99, name: "Brazil")
    @south_africa = create(:country, id: 10, name: "South Africa")

    @agile_book = create(:book, id: 1, title: "Agile Web Development with Rails")
    @prog_book = create(:book, id: 2, title: "Programming Ruby")

    @dog_article = create(:article, id: 900, headline: "Man Bites Dog")
    @cat_article = create(:article, id: 800, headline: "Man Bites Cat")
  end

  context ".first" do
    it "returns the object with the smallest id" do
      expect(Country.first).to eq @hungary#hide
      # expect(Country.first).to eq YOUR_CODE_HERE#show

      expect(Book.first).to eq @agile_book#hide
      # expect(YOUR_CODE_HERE).to eq @agile_book#show

      expect(Article.first).to eq @cat_article#hide
      # expect(YOUR_CODE_HERE).to eq @cat_article#show
    end
  end

  context ".last" do
    it "returns the object with the largest id" do
      expect(Country.last).to eq @brazil#hide
      # expect(Country.last).to eq YOUR_CODE_HERE#show

      expect(Book.last).to eq @prog_book#hide
      # expect(YOUR_CODE_HERE).to eq @prog_book#show

      expect(Article.last).to eq @dog_article#hide
      # expect(YOUR_CODE_HERE).to eq @dog_article#show
    end
  end

  context ".second, .third, .fourth, .fifth, and .forty_two" do
    xit "returns the object at the given ordinal (ordered by id ascending)" do
      
      expect(Country.second).to eq @south_africa#hide
      # expect(Country.second).to eq YOUR_CODE_HERE#show


    end
  end

end