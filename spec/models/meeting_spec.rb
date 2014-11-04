require 'rails_helper'

RSpec.describe Meeting, :type => :model do
  
  context "attributes" do
    it "have start_at time" do
      start_time = Time.now
      create(:meeting, start_at: start_time)
      expect(Meeting.exists?(start_at: start_time)).to eq(true)
    end
  end
end
