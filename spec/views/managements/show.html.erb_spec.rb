require 'rails_helper'

RSpec.describe "managements/show", type: :view do
  before(:each) do
    @management = assign(:management, Management.create!(
      :product => nil,
      :company => nil,
      :currency => nil,
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
  end
end
