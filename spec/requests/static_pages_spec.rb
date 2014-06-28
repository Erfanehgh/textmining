require 'spec_helper'

describe "StaticPages" do

  describe "Home page" do

    it "should have the content 'plagiatism'" do
      visit '/static_pages/home'
      expect(page).to have_content('plagiarism')
    end
 
 it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Plagiarism Detector!")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
# it "should have the title 'Home'" do
 #    visit '/static_pages/home'
  #    expect(page).to have_title("Plagiarism Detector | Home")
  #  end

  end

 describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

 it "should have the title 'Home'" do
      visit '/static_pages/help'
      expect(page).to have_title("Plagiarism Detector | Help")
    end

  end

 describe "Contact page" do

    it "should have the content 'Contact us'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact us')
    end
  end



end
