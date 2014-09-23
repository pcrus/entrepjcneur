# This file is copied to spec/ when you run 'rails generate rspec:install'
require 'spec_helper'
  
describe "Static pages" do
  
  let(:base_title){"Ruby on Rails Tutorial Sample App"}
  
  describe "Home page" do
    before { visit root_path}
    
    it "should have the content 'Welcome to the Sample App'" do
      expect(page).to have_content('Welcome to the Sample App')
    end
    
    it "should have the right title" do 
      expect(page).to have_title("#{base_title} | Home")
    end
    
    it "should not have a custom page title" do
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end
    
    it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title("#{base_title} | Help")
    end
  end
  
  describe "About page" do
    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')  
    end
    
    it "should have the title 'About Us'" do
      visit about_path
      expect(page).to have_title("#{base_title} | About")
    end
  end
  
  describe "Contact Us" do
    it "should have the content 'Contact Us'" do
      visit contact_path
      expect(page).to have_content('Contact Us')
    end
  
    it "should have a title 'Contact Us'" do
      visit contact_path
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
  
end