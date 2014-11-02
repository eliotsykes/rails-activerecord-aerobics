require "rails_helper"

describe ".first & .first! workout" do

  context ".first" do

    xit "returns the object with the smallest id" do

      Book.first
      Address.first
      Customer.first
      Product.first
      Instructor.first

    end

  end

  context ".first!" do

  end

end