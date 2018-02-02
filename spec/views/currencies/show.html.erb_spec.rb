require 'rails_helper'

RSpec.describe "currencies/show", type: :view do
  before(:each) do
    @currency = assign(:currency, Currency.create!(
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
  end
end
