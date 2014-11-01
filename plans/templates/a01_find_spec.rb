require "rails_helper"

describe ".find(*args) workout" do

  context ".find(id) finds record by a single id" do

    context "when the id is a number (Fixnum)" do

      # Here's the first one done for you!
      it "finds book with id 1 using Book.find(1)" do
        create(:book, id: 1, title: "Agile Web Development with Rails")
        
        book = Book.find(1)
        
        expect(book.id).to eq(1)
        expect(book.title).to eq("Agile Web Development with Rails")
      end

      # From now on replace YOUR_CODE_HERE with code to make the spec pass
      it "finds book with id 2 using Book.find(2)" do
        create(:book, id: 2, title: "Programming Ruby")
        
        # See the YOUR_CODE_HERE? Replace it with code to make
        # this spec pass:
        book = Book.find(2)#hide
        # book = YOUR_CODE_HERE#show
        
        expect(book.id).to eq(2)
        expect(book.title).to eq("Programming Ruby")
      end

    end

    context "when the id is a number (String)" do

      it 'finds book with id "123" (a String, not a Fixnum)' do
        create(:book, id: 123, title: "Exceptional Ruby")
        
        book = Book.find("123")#hide
        # book = YOUR_CODE_HERE "123"#show

        expect(book.id).to eq(123)
        expect(book.title).to eq("Exceptional Ruby")
      end

    end

  end
  
end