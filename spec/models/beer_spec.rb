require 'rails_helper'

RSpec.describe Beer, type: :model do
  it "is saved with a name and style" do
    beer = Beer.create name:"Olut",style:"Lager"

    expect(beer).to be_valid
    expect(Beer.count).to eq(1)
  end

  it "is not valid without a name" do
    beer = Beer.create style:"Lager"

    expect(beer).not_to be_valid
  end

  it "is not valid without a style" do
    beer = Beer.create name:"Olut"

    expect(beer).not_to be_valid
  end
end
