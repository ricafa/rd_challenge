require 'rails_helper'

RSpec.describe "managements/index", type: :view do
  before(:each) do
    assign(:managements, [
      Management.create!(
        :product => nil,
        :company => nil,
        :currency => nil,
        :price => "9.99"
      ),
      Management.create!(
        :product => nil,
        :company => nil,
        :currency => nil,
        :price => "9.99"
      )
    ])
  end

  it "renders a list of managements" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
