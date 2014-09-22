# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
  
describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end
  
  describe "About page" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')  
    end
  end

end