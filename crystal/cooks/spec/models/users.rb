require 'rails_helper'

describe "User" do

  it "assigns email to user" do
    user = User.create(email: "Test")
    expect(user.email).to eq "Test"
  end

  it "assigns name to recipe" do
    user = User.create(name: "blah")
    expect(user.name).to eq "blah"
  end

  it "can let user store password in db (bad)" do
    user = User.create(password: "secret")
    expect(user.password).to eq "secret"
  end
end
