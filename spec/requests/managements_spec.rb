require 'rails_helper'

RSpec.describe "Managements", type: :request do
  describe "GET /managements" do
    it "works! (now write some real specs)" do
      get managements_path
      expect(response).to have_http_status(200)
    end
  end
end
