require 'rails_helper'

RSpec.feature "" do

	scenario "with valid credentials" do
		visit "/"
		click_link "Sign up"
		fill_in "Email", with: "user@example.com"
		fill_in "Password", with:"password"
		fill_in "Password confirmation", with:"password"
		
		click_button "Sign up"
		
		
	end
	
	scenario "with invalid credentials" do
		visit "/"
		click_link "Sign up"
		fill_in "Email", with: ""
		fill_in "Password", with:""
		fill_in "Password confirmation", with:""
		
		click_button "Sign up"
		
		
	end
	
end