require 'rails_helper'

RSpec.describe Category, type: :model do
  it "have valid name" do 
    category = Category.new(
      name: "main course"
    )

    expect(category).to be_valid
  end
end
