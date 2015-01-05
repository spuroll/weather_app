require 'rails_helper'

RSpec.describe Locale, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:locale)).to be_valid
  end
  
  it "is invalid without a zip code"
  it "is invalid without an ip address"
end
