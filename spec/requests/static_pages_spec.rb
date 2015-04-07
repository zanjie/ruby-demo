require 'spec_helper'

describe "static pages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }
  shared_examples_for "all static pages" do
    it { should have_content(heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do 
    before { visit root_path}
    let(:heading) { 'Sample App' } 
    let(:page_title) { '' }
    it_should_behave_like "all static pages" 
    it { should_not have_title('| Home') } 
  end  
  
  it "should have the right links on the layout" do   
    visit root_path 
    click_link "About" 
    expect(page).to have_title(full_title('About Us')) 
    click_link "Help"
    expect(page).to have_title(full_title('help'))
    click_link "Contact" 
    expect(page).to have_title(full_title('Contact'))
    click_link "Home" 
    click_link "Sign up now!" 
    expect(page).to have_title(full_title('Sign up'))
    click_link "sample app" 
    expect(page).to have_title(full_title(''))
  end         
end

