RSpec.describe "hyrax/pages/show", type: :view do
  let(:page) { create(:content_block, name: 'about_page', value: 'This is the page.') }

  before do
    assign(:page, page)
  end

  it "renders the about_page content block" do
    render
    expect(rendered).to include(page.value)
    expect(rendered).not_to include('tinymce') # Ensures hyrax's view with editor is not rendered.
  end
end
