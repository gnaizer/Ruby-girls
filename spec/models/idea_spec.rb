require "rails_helper"

RSpec.describe Idea, type: :model do
  it "has a name" do # yep, you can totally use 'it'
    idea = Idea.create!(name: "My Awesome Idea Name") # creating a new idea 'instance'
    second_idea = Idea.create!(name: "My Second Idea Name") # creating another new idea 'instance'
    expect(second_idea.name).to eq("My Second Idea Name") # this is our expectation
  end
  describe "associations" do
    it{ is_expected.to have_many(:comments) }
  end
  describe "validations" do
    it{ is_expected.to validate_presence_of :name }
  end
end


