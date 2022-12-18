require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        title: "Title",
        content: "Content xxxxxxxxxxxxxxxxxxx"
      ),
      Article.create!(
        title: "Title",
        content: "Content xxxxxxxxxxxxxxxxxxx"
      )
    ])
  end

  it "renders a list of articles" do
    render
    cell_selector = 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Content xxxxxxxxxxxxxxxxxxx".to_s), count: 2
  end
end
