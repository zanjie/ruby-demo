require 'spec_helper'

describe "GET /static_pages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }
  describe "Home page" do 
    before { visit root_path }
    it { should have_content('Sample App') }
    it { should have_title("Ruby on Rails Tutorial Sample App") }
    it { should_not have_title('| Home') } 
  end


  describe "Home page" do
    it "should have the content 'Sample'" do 
      visit root_path
      expect(page).to have_content('Sample') 
     end
    it "should have the right title" do
      visit root_path
       expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home") 
   end 
   end
   describe "Help page" do
     it "should have the content 'Help'" do
        visit help_url
        expect(page).to have_content('Help')
        end
   end 
   describe "About page" do
     it "should have the content 'About Us'" do 
       visit about_path
       expect(page).to have_content('About Us') 
       end 
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
