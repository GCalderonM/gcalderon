require 'rails_helper'

RSpec.describe "works/show", type: :view do
  before(:each) do
    assign(:work, Work.create!(
      company_name: "Company Name",
      job: "Job",
      start_year: "Start Year",
      finish_year: "Finish Year"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/Job/)
    expect(rendered).to match(/Start Year/)
    expect(rendered).to match(/Finish Year/)
  end
end
