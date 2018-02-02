require 'rails_helper'

RSpec.describe "currencies/index", type: :view do
  before(:each) do
    assign(:currencies, [
      Currency.create!(
        :description => "Description"
      ),
      Currency.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of currencies" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
