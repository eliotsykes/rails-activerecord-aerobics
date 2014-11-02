require "rails_helper"

describe ".find(ids) workout" do

  it "returns objects for id list" do
    scotland = create(:country, id: 1, name: "Scotland")
    wales = create(:country, id: 2, name: "Wales")
    mexico = create(:country, id: 25, name: "Mexico")
    australia = create(:country, id: 88, name: "Australia")
    russia = create(:country, id: 150, name: "Russia")

    expect(Country.find(1, 2)).to eq [scotland, wales]

    expect(Country.find(25, 88)).to eq [mexico, australia]#hide
    # expect(Country.find(25, 88)).to eq YOUR_CODE_HERE#show

    expect(Country.find(25, 88, 150)).to eq [mexico, australia, russia]#hide
    # expect(Country.find(25, 88, 150)).to eq YOUR_CODE_HERE#show

    expect(Country.find(1, 150)).to eq [scotland, russia]#hide
    # expect(YOUR_CODE_HERE).to eq [scotland, russia]#show

    expect(Country.find(1, 2, 25, 88, 150)).to eq [scotland, wales, mexico, australia, russia]#hide
    # expect(YOUR_CODE_HERE).to eq [scotland, wales, mexico, australia, russia]#show
  end

  it "returns objects for id array" do
    agile_book = create(:book, id: 1, title: "Agile Web Development with Rails")
    prog_book = create(:book, id: 123, title: "Programming Ruby")
    exceptional_book = create(:book, id: 987654, title: "Exceptional Ruby")
    refactor_book = create(:book, id: 99, title: "Refactoring: Ruby Edition")
    practice_book = create(:book, id: 11223344, title: "Practicing Rails")

    expect(Book.find([1, 99, 123])).to eq [agile_book, refactor_book, prog_book]

    expect(Book.find([99, 123])).to eq [refactor_book, prog_book]#hide
    # expect(Book.find([99, 123])).to eq YOUR_CODE_HERE#show

    expect(Book.find([1])).to eq [agile_book]#hide
    # expect(Book.find([1])).to eq YOUR_CODE_HERE#show

    expect(Book.find([99, 123, 987654])).to eq [refactor_book, prog_book, exceptional_book]#hide
    # expect(Book.find(YOUR_CODE_HERE)).to eq [refactor_book, prog_book, exceptional_book]#show

    expect(Book.find([1, 11223344])).to eq [agile_book, practice_book]#hide
    # expect(YOUR_CODE_HERE).to eq [agile_book, practice_book]#show

    expect(Book.find([1, 99, 123, 987654, 11223344])).to eq [agile_book, refactor_book, prog_book, exceptional_book, practice_book]#hide
    # expect(YOUR_CODE_HERE).to eq [agile_book, refactor_book, prog_book, exceptional_book, practice_book]#show
  end

end
