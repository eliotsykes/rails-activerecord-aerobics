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

  context "with Array and Hash conditions" do

    it "tells you if a record exists matching single condition" do
      
      create(:article, id: 100, headline: "Aliens Make First Contact")
      
      expect(Article.exists?(headline: "Pigs Can Fly")).to eq(false)
      expect(Article.exists?(["headline = ?", "Pigs Can Fly"])).to eq(false)
      expect(Article.exists?(["headline LIKE ?", "%Can%"])).to eq(false)
      
      expect(Article.exists?(headline: "Aliens Make First Contact")).to eq(true)#hide
      # expect(Article.exists?(headline: "Aliens Make First Contact")).to eq(YOUR_CODE_HERE)#show
      expect(Article.exists?(["headline = ?", "Aliens Make First Contact"])).to eq(true)#hide
      # expect(Article.exists?(["headline = ?", "Aliens Make First Contact"])).to eq(YOUR_CODE_HERE)#show
      expect(Article.exists?(["headline LIKE ?", "%First%"])).to eq(true)#hide
      # expect(Article.exists?(["headline LIKE ?", "%First%"])).to eq(YOUR_CODE_HERE)#show
      
      expect(Article.exists?(id: 99)).to eq(false)
      expect(Article.exists?(["id = ?", 99])).to eq(false)
      
      expect(Article.exists?(id: 100)).to eq(true)
      expect(Article.exists?(["id = ?", 100])).to eq(true)#hide
      # expect(Article.exists?(["id = ?", YOUR_CODE_HERE])).to eq(true)#show

      expect(Article.exists?(id: [99, 100, 101])).to eq(true)
      expect(Article.exists?([ "id in (?)", [99, 100, 101] ])).to eq(true)#hide
      # expect(Article.exists?([ "id in (?)", [99, YOUR_CODE_HERE, 101] ])).to eq(true)#show

      book = create(:book, title: "Design Patterns")
      
      expect(Book.exists?(title: "Guinness Book of Records 2099")).to eq(false)#hide
      # expect(Book.YOUR_CODE_HERE?(title: "Guinness Book of Records 2099")).to eq(false)#show
      expect(Book.exists?(["title = ?", "Guinness Book of Records 2099"])).to eq(false)#hide
      # expect(Book.exists?(["title = YOUR_CODE_HERE", "Guinness Book of Records 2099"])).to eq(false)#show
      expect(Book.exists?(["title LIKE ?", "%99"])).to eq(false)#hide
      # expect(Book.YOUR_CODE_HERE(["title LIKE ?", "%99"])).to eq(YOUR_CODE_HERE)#show
      
      expect(Book.exists?(title: "Design Patterns")).to eq(true)#hide
      # expect(Book.exists?(YOUR_CODE_HERE: YOUR_CODE_HERE)).to eq(true)#show
      expect(Book.exists?(["title = ?", "Design Patterns"])).to eq(true)#hide
      # expect(Book.exists?([YOUR_CODE_HERE, "Design Patterns"])).to eq(true)#show
      expect(Book.exists?(["title LIKE ?", "%terns"])).to eq(true)#hide
      # expect(Book.exists?([YOUR_CODE_HERE, "%terns"])).to eq(true)#show
      
      expect(Book.exists?(id: book.id - 1)).to eq(false)#hide
      # expect(Book.exists?(id: YOUR_CODE_HERE)).to eq(false)#show
      expect(Book.exists?(["id = ?", book.id - 1])).to eq(false)#hide
      # expect(Book.exists?(["id = ?", YOUR_CODE_HERE])).to eq(false)#show
      
      expect(Book.exists?(id: book.id)).to eq(true)#hide
      # expect(YOUR_CODE_HERE(YOUR_CODE_HERE: book.id)).to eq(true)#show
      expect(Book.exists?(["id = ?", book.id])).to eq(true)#hide
      # expect(Book.exists?([YOUR_CODE_HERE, book.id])).to eq(true)#show

      expect(Book.exists?(id: [book.id, 98765])).to eq(true)#hide
      # expect(Book.exists?(id: [YOUR_CODE_HERE, 98765, YOUR_CODE_HERE])).to eq(true)#show
      expect(Book.exists?([ "id in (?)", [54321, book.id] ])).to eq(true)#hide
      # expect(YOUR_CODE_HERE([ "id in (YOUR_CODE_HERE)", [54321, book.id] ])).to eq(true)#show

    end

  end

end