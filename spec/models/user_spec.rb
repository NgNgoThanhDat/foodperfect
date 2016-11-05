require 'rails_helper'

RSpec.describe User, type: :model do  
  it "has none to begin with" do
    expect(User.count).to eq 0
  end

  it "has one after adding one" do
    User.create!(name: "ThanhDat", email: "datthanh.9982@gmail.com", password: "Dell5537", password_confirmation: "Dell5537")
    expect(User.count).to eq 1
  end

  it "has none after one was created in a previous example" do
    expect(User.count).to eq 0
  end
end
