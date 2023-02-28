require 'rails_helper'

RSpec.describe "works/index", type: :view do
  before(:each) do
    assign(:works, [
      Work.create!(
        company_name: "Company Name",
        job: "Job",
        start_year: "Start Year",
        finish_year: "Finish Year"
      ),
      Work.create!(
        company_name: "Company Name",
        job: "Job",
        start_year: "Start Year",
        finish_year: "Finish Year"
      )
    ])
  end

  it "renders a list of works" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Company Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Job".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Start Year".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Finish Year".to_s), count: 2
  end
end
