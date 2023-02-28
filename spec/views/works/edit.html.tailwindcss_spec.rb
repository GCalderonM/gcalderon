require 'rails_helper'

RSpec.describe "works/edit", type: :view do
  let(:work) {
    Work.create!(
      company_name: "MyString",
      job: "MyString",
      start_year: "MyString",
      finish_year: "MyString"
    )
  }

  before(:each) do
    assign(:work, work)
  end

  it "renders the edit work form" do
    render

    assert_select "form[action=?][method=?]", work_path(work), "post" do

      assert_select "input[name=?]", "work[company_name]"

      assert_select "input[name=?]", "work[job]"

      assert_select "input[name=?]", "work[start_year]"

      assert_select "input[name=?]", "work[finish_year]"
    end
  end
end
