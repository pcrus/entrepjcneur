# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'capybara/rspec'
require 'capybara/rails'

RSpec.configure do |config|
  
  describe "Static pages" do
    describe "Home page" do
      it "should have the content 'Sample App'" do
        visit '/static_pages/home'
        expect(page).to have_content('Sample App')
      end
    end
  end
  config.include Capybara::DSL
end
