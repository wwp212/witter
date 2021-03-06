require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Micro'" do
      visit '/static_pages/home'
      page.should have_content('Micro')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Micro | Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text=> 'Help')
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
  end

end