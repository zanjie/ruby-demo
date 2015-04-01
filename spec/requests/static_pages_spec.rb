require 'spec_helper'

describe "GET /static_pages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    it "should have the content 'Sample'" do 
      visit '/static_pages/home' 
      expect(page).to have_content('Sample') 
     end
   end
   describe "Help page" do
     
     it "should have the content 'Help'" do
        visit '/static_pages/help' 
        expect(page).to have_content('Help')
        end
   end 
   describe "About page" do
     it "should have the content 'About Us'" do 
       visit '/static_pages/about' 
       expect(page).to have_content('About Us') 
       end 
   end  
   it "should have the right title" do
      visit '/static_pages/home'
       expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home") 
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
