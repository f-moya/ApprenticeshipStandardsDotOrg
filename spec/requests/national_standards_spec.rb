require "rails_helper"

RSpec.describe "NationalStandards", type: :request do
  describe "GET /index" do
    context "when guest" do
      it "returns http success" do
        create_pair(:occupation_standard, :program_standard)

        get national_standards_path

        expect(response).to be_successful
      end
    end
  end
end