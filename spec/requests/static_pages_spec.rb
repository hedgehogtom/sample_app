require 'spec_helper'

describe "Static pages" do

  subject { page }  # 'page' is the subject of all calls to 'should'
   
  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Sample App') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: full_title('Home')) }
  end
  
  describe "Help page" do
    before { visit help_path }
    
    it { should have_selector('h1', text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end
  
  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1', text: 'About Us') }
    it { should have_selector('title', 
      text: full_title('About Us')) }
  end

  # Tests for a Contact page
  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact Us') }
    it { should have_selector('title', 
      text: full_title('Contact Us')) }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    should have_selector 'title', text: full_title('About Us')
    click_link "Help"
    should have_selector 'title', text: full_title('Help')
    click_link "Contact"
    should have_selector 'title', text: full_title('Contact Us')
    click_link "Home"
    click_link "Sign up now!"
    should have_selector 'title', text: full_title('Sign Up')
  end
end

# require 'spec_helper'

# describe "StaticPages" do
  # describe "GET /static_pages" do
    # it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      # get static_pages_index_path
      # response.status.should be(200)
    # end
  # end
# end
