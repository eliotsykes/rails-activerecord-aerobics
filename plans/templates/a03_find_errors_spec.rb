require "rails_helper"

describe ".find errors workout" do

  xit "raises an ActiveRecord::RecordNotFound error for unknown ids" do
    expect { Book.find(2) }.to raise_error(ActiveRecord::RecordNotFound)
    
    expect { Book.find(998) }.to raise_error(ActiveRecord::RecordNotFound)#hide
    # expect { Book.find(998) }.to raise_error(YOUR_CODE_HERE)#show
    
    
    expect { Book.find("11223345") }.to raise_error(YOUR_CODE_HERE)
    
    expect { Book.find(2) }.to raise_error(ActiveRecord::RecordNotFound)

    # What about multiple ids where one is known and one is unknown?
  end

  xit "raises blah on nil id" do

  end

  xit "raises foo on nothing like an id" do

  end

end