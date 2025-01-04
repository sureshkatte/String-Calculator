require 'rails_helper'

RSpec.describe "Calculators", type: :request do
  describe "GET /calculate" do
    it "returns the correct result for valid input" do
      get '/calculate', params: { input: 5 }
      expect(response).to have_http_status(:success)

      json_response = JSON.parse(response.body)
      expect(json_response['result']).to eq(5)
    end
  end
end
