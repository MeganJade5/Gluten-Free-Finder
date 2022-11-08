require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  let(:post) {
    Post.create!(
      restaurant_name: "MyString",
      street_number: "MyString",
      street_name: "MyString",
      suburb: "MyString",
      postcode: 1,
      description: nil,
      cuisine: nil,
      food_prep: nil,
      user: nil,
      live_status: false
    )
  }

  before(:each) do
    assign(:post, post)
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(post), "post" do

      assert_select "input[name=?]", "post[restaurant_name]"

      assert_select "input[name=?]", "post[street_number]"

      assert_select "input[name=?]", "post[street_name]"

      assert_select "input[name=?]", "post[suburb]"

      assert_select "input[name=?]", "post[postcode]"

      assert_select "input[name=?]", "post[description]"

      assert_select "input[name=?]", "post[cuisine_id]"

      assert_select "input[name=?]", "post[food_prep_id]"

      assert_select "input[name=?]", "post[user_id]"

      assert_select "input[name=?]", "post[live_status]"
    end
  end
end
