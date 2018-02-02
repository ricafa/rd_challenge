require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :description => "Description"
      ),
      Product.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
