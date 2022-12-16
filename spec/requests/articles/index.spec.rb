require "rails_helper"

RSpec.describe 'GET /' do
  let(:article) do
    Article.create(title: 'sample',  content: 'sample')
  end

  before(:each) do
    sample_data = [
      Article.create(title: 'title1', content: "132123213123123"),
      Article.create(title: 'title2', content: "132123213123123" ),
      Article.create(title: 'title3', content: "132123213123123"),
      Article.create(title: 'title4', content: "132123213123123"),
      Article.create(title: 'title5', content: "132123213123123"),
      Article.create(title: 'title6', content: "132123213123123")
    ]
  end

  it 'returns a list of Articles' do
    expect(assigns(:articles)).to match_array(sample_data)
  end

  it 'it render the index template' do
    subject
    assert_template 'articles/index'
    expect(response).to render_template(:index)
  end

  it 'returns 200' do
    subject
    expect(response).to have_http_status(200)
  end
end
