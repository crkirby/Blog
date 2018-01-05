require "rails_helper"

RSpec.feature "Creating a new article" do
  scenario "A user creates a new article" do	
	visit "/"
	
	click_link "New Article"
	
	fill_in "Title", with: "This is a test article"
	fill_in "Body", with: "This is a text body test"
	
	click_button "Create Article"
	
	expect(page).to have_content("Article was created")
	expect(page.current_path).to eq(articles_path)
  end
	
end