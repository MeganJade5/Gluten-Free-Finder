require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
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
      ),
      Post.create!(
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
      )
    ])
  end

  it "renders a list of posts" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Restaurant Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Street Number".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Street Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Suburb".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
  end
end
