require 'rails_helper'

RSpec.describe Locale, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:locale)).to be_valid
  end
  
  it "is invalid without a zip code" do
    expect(FactoryGirl.build(:locale, zip: nil)).to be_invalid
  end
  
  it "is invalid without an ip address" do
    expect(FactoryGirl.build(:locale, ip: nil)).to be_invalid
  end
end
