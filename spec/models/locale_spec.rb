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
  
  it "validates 5-digit zip code length" do
    expect(FactoryGirl.build(:locale, zip: "483488")).to be_invalid
    expect(FactoryGirl.build(:locale, zip: "4488")).to be_invalid
    expect(FactoryGirl.build(:locale, zip: "48348")).to be_valid
  end

  it "validates ip address length" do
    expect(FactoryGirl.build(:locale, ip: "255.255.255.2555")).to be_invalid
    expect(FactoryGirl.build(:locale, ip: "1.1.1")).to be_invalid
    expect(FactoryGirl.build(:locale, ip: "255.255.0.1")).to be_valid
  end

end
