require "rails_helper"

describe ".find(*args) errors workout", focus: true do

  it "raises ActiveRecord::RecordNotFound error for unknown id", focus: true do

    expect { Book.find(1) }.to raise_error(ActiveRecord::RecordNotFound)

    expect { Book.find(99) }.to raise_error(ActiveRecord::RecordNotFound)#hide
    # expect { Book.find(99) }.to raise_error(YOUR_CODE_HERE)#show

    expect { Book.find("11223344") }.to raise_error(ActiveRecord::RecordNotFound)#hide
    # expect { Book.find("11223344") }.to raise_error(YOUR_CODE_HERE)#show

    expect { Book.find("123-some-book") }.to raise_error(ActiveRecord::RecordNotFound)#hide
    # expect { Book.find("123-some-book") }.to raise_error(YOUR_CODE_HERE)#show

    expect { Book.find(1000) }.to raise_error(ActiveRecord::RecordNotFound)#hide
    # expect { YOUR_CODE_HERE }.to raise_error(ActiveRecord::RecordNotFound)#show
  end

  it "raises ActiveRecord::RecordNotFound error for id array with 1+ unknown ids" do

    create(:country, id: 456)
    
    expect { Country.find([456]) }.not_to raise_error
    expect { Country.find([456, 457]) }.to raise_error(ActiveRecord::RecordNotFound)#hide
    # expect { Country.find([456, 457]) }.to YOUR_CODE_HERE#show

    expect { Book.find([1, 2, 3]) }.to raise_error(ActiveRecord::RecordNotFound)#hide
    # expect { Book.find([1, 2, YOUR_CODE_HERE]) }.to YOUR_CODE_HERE(ActiveRecord::RecordNotFound)#show
  end

  it "raises ActiveRecord::RecordNotFound for nil ids" do

    expect { Country.find(nil) }.to raise_error(ActiveRecord::RecordNotFound)#hide
    # expect { Country.find(nil) }.to YOUR_CODE_HERE#show

    expect { Book.find([nil, nil, nil]) }.to raise_error(ActiveRecord::RecordNotFound)#hide
    # expect { Book.find([nil, nil, nil]) }.to YOUR_CODE_HERE#show

  end

  it "raises ActiveRecord::RecordNotFound for nonsense ids" do
    
    expect { Country.find(:not_an_id) }.to raise_error(ActiveRecord::RecordNotFound)#hide
    # expect { Country.find(:not_an_id) }.to YOUR_CODE_HERE#show

    expect { Book.find(["hello", "world"]) }.to raise_error(ActiveRecord::RecordNotFound)#hide
    # expect { Book.find(["hello", "world"]) }.to YOUR_CODE_HERE#show
  end

end
