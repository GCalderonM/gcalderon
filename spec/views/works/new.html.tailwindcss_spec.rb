require 'rails_helper'

RSpec.describe "works/new", type: :view do
  before(:each) do
    assign(:work, Work.new(
      company_name: "MyString",
      job: "MyString",
      start_year: "MyString",
      finish_year: "MyString"
    ))
  end

  it "renders new work form" do
    render

    assert_select "form[action=?][method=?]", works_path, "post" do

      assert_select "input[name=?]", "work[company_name]"

      assert_select "input[name=?]", "work[job]"

      assert_select "input[name=?]", "work[start_year]"

      assert_select "input[name=?]", "work[finish_year]"
    end
  end
end
