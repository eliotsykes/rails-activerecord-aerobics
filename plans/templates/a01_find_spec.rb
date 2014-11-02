require "rails_helper"

describe ".find(*args) workout" do

  context ".find(id) finds record by a single id (aka primary key)" do

    before do
      @agile_book = create(:book, id: 1, title: "Agile Web Development with Rails")
      @prog_book = create(:book, id: 123, title: "Programming Ruby")
      @exceptional_book = create(:book, id: 987654, title: "Exceptional Ruby")
      @refactor_book = create(:book, id: 99, title: "Refactoring: Ruby Edition")
      @practice_book = create(:book, id: 11223344, title: "Practicing Rails")
    end

    it "handles numeric (Fixnum) ids" do
      # Here's the first one done for you!
      expect(Book.find(1)).to eq(@agile_book)#hide
      # expect(Book.find(1)).to eq(@agile_book)#show

      # From now on replace YOUR_CODE_HERE with code to make the spec pass
      expect(Book.find(123)).to eq(@prog_book)#hide
      # expect(YOUR_CODE_HERE(123)).to eq(@prog_book)#show

      expect(Book.find(987654)).to eq(@exceptional_book)#hide
      # expect(YOUR_CODE_HERE(987654)).to eq(@exceptional_book)#show
      
      expect(Book.find(99)).to eq(@refactor_book)#hide
      # expect(YOUR_CODE_HERE).to eq(@refactor_book)#show

      expect(Book.find(11223344)).to eq(@practice_book)#hide
      # expect(YOUR_CODE_HERE).to eq(@practice_book)#show
    end

    it "handles pure numerical String ids" do
      expect(Book.find("1")).to eq(@agile_book)

      expect(Book.find("123")).to eq(@prog_book)#hide
      # expect(YOUR_CODE_HERE("123")).to eq(@prog_book)#show

      expect(Book.find("987654")).to eq(@exceptional_book)#hide
      # expect(YOUR_CODE_HERE("987654")).to eq(@exceptional_book)#show
      
      expect(Book.find("99")).to eq(@refactor_book)#hide
      # expect(YOUR_CODE_HERE).to eq(@refactor_book)#show

      expect(Book.find("11223344")).to eq(@practice_book)#hide
      # expect(YOUR_CODE_HERE).to eq(@practice_book)#show
    end

    it "handles Strings that can be converted to numeric ids" do
      expect(Book.find("1-agile-web")).to eq(@agile_book)

      expect(Book.find("123_ruby_prog_book")).to eq(@prog_book)#hide
      # expect(YOUR_CODE_HERE("123_ruby_prog_book")).to eq(@prog_book)#show

      expect(Book.find("987654 EXCEPTIONAL RUBY")).to eq(@exceptional_book)#hide
      # expect(YOUR_CODE_HERE("987654 EXCEPTIONAL RUBY")).to eq(@exceptional_book)#show
      
      expect(Book.find("00099-rred")).to eq(@refactor_book)#hide
      # expect(YOUR_CODE_HERE("00099-rred")).to eq(@refactor_book)#show

      expect(Book.find("11223344 Hello World!")).to eq(@practice_book)#hide
      # expect(YOUR_CODE_HERE("11223344 Hello World!")).to eq(@practice_book)#show

      # Wondering how the String-to-number conversion happens? 
      # The String#to_i method is used to convert the Strings into integers. 
      # Feel free to try these out in your console (irb or 'rails c'):
      # "1-agile-web".to_i # returns 1 (Fixnum)
      # "123_ruby_prog_book".to_i # returns 123 (Fixnum)
    end

  end

end
