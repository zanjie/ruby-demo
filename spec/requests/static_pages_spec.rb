require 'spec_helper'

describe "static pages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }
  describe "Home page" do 
    before { visit root_path}
    it { should have_content('Sample App') }
    it { should have_title("Ruby on Rails Tutorial Sample App") }
  end             
end

      

  #describe "GET /static_pages" do
    #it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      #response.status.should be(200)
    #end
  #end
#end
