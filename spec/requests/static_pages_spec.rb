require 'spec_helper'
require 'minitest/autorun'

RSPec.configure do |config|
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