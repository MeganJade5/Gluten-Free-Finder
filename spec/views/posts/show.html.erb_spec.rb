require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    assign(:post, Post.create!(
      restaurant_name: "Restaurant Name",
      street_number: "Street Number",
      street_name: "Street Name",
      suburb: "Suburb",
      postcode: 2,
      description: nil,
      cuisine: nil,
      food_prep: nil,
      user: nil,
      live_status: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Restaurant Name/)
    expect(rendered).to match(/Street Number/)
    expect(rendered).to match(/Street Name/)
    expect(rendered).to match(/Suburb/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
