require 'spec_helper'

describe "StaticPages" do

 subject { page }

  describe "Home page" do
	before { visit root_path }
    it { should have_content ('plagiarism')}
it { should have_title("Plagiarism Detector!") }

it { should_not have_title('| Home') }
  end

 describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

it "should have the base title" do
     visit help_path
      expect(page).to have_title("Plagiarism Detector!")
    end

  end

 describe "Contact page" do

    it "should have the content 'Contact us'" do
      visit contact_path
      expect(page).to have_content('Contact us')
    end


it "should have the base title" do
      visit contact_path
     expect(page).to have_title("Plagiarism Detector!")
    end

  end



end
