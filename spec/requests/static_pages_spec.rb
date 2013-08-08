require 'spec_helper'

describe "StaticPages" do
  subject { page }

  shared_examples_for "all static pages" do
    it{ should have_selector('h1', text:heading) }
    it{ expect(page).to have_title(page_title)   }
  end
  
  describe "Home page" do
    before {visit root_path}
    let(:heading) {'Yale1on1'}
    let(:page_title) {''}
    it_should_behave_like "all static pages"
    
    it{expect(page).not_to have_title("| Home")     }
  end # home page

  describe "Help page" do
    before {visit help_path}
    let(:heading){'Help'}
    let(:page_title){'Help'}
    it_should_behave_like "all static pages"
  end #help page

  describe "About page" do
    before {visit about_path}
    it {should have_selector('h1', text:'About Us')}
    it{expect(page).to have_title ("About Us")}
	end

  describe "Contact" do
    before {visit contact_path}
    it{should have_selector('h1', text:'Contact Us')}
    it{expect(page).to have_title ("Contact")}
  end #contact

end #end main describe
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

