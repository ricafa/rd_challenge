require 'rails_helper'

RSpec.describe "managements/edit", type: :view do
  before(:each) do
    @management = assign(:management, Management.create!(
      :product => nil,
      :company => nil,
      :currency => nil,
      :price => "9.99"
    ))
  end

  it "renders the edit management form" do
    render

    assert_select "form[action=?][method=?]", management_path(@management), "post" do

      assert_select "input#management_product_id[name=?]", "management[product_id]"

      assert_select "input#management_company_id[name=?]", "management[company_id]"

      assert_select "input#management_currency_id[name=?]", "management[currency_id]"

      assert_select "input#management_price[name=?]", "management[price]"
    end
  end
end
