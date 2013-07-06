require 'spec_helper'

describe "StaticPages" do
  
  subject { page }

  describe "Home page" do
    before {visit root_path }
    let(:heading) {'Yale1on1'}
    let(:page_title) {'Home'}
    #it_should_behave_like "all static pages"
    it {should_not have_selector('title', text: '| Home')}
    it {should have_selector('p', text: 'Frustrated')}
  end


end #end main desribe
