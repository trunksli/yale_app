require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do
    it "should have the h1 'Yale1on1'" do
      visit '/static_pages/home'
      page.should have_selector('h1', text:'Yale1on1')
    end

    it "should have the basetitle" do
      visit '/static_pages/home'
      expect(page).to have_title("Yale1on1")      
	  end
  
    it "should not have a custom page title" do 
      visit '/static_pages/home'
      expect(page).not_to have_title("| Home")     
    end
  end # home page

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', text:'Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title ("Help")
	  end
  end #help page

  describe "About page" do
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', text:'About Us')
    end
	  it "should have the title 'Yale1on1'" do
      visit '/static_pages/about'
      expect(page).to have_title ("About Us")
	  end
  end

  describe "Contact" do
    it "should have the h1 'Contact Us'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', text:'Contact Us')
    end
	   it "should have the title 'Yale1on1'" do
      visit '/static_pages/contact'
      expect(page).to have_title ("Contact")
	  end
  end #contact

=begin  
  subject { page }

  describe "Home page" do
    before {visit root_path }
    let(:heading) {'Yale1on1'}
    let(:page_title) {'Home'}
    #it_should_behave_like "all static pages"
    it {should_not have_selector('title', text: '| Home')}
    it {should have_selector('p', text: 'Frustrated')}
  end

  describe "About Us" do
    before {visit root_path }
    let(:heading) {'Yale1on1'}
    let(:page_title) {'Home'}
    #it_should_behave_like "all static pages"
    it {should_not have_selector('title', text: '| Home')}
    it {should have_selector('p', text: 'Frustrated')}
  end
=end
end #end main desribe
