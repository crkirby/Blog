require 'rails_helper'

RSpec.feature "Editing an article" do

	before do
		@article = Article.create(title:"Testing testing", body:"testing body body")
	end
	
	scenario "A user updates an article" do
		visit "/"
		
		click_link @article.title
		
		click_link "Edit this article"
		
		fill_in "Title", with: "Updated title"
		fill_in "Body", with: "Updated body"
		
		click_button "Save Update"
		
		expect(page).to have_content("Article has been updated")
		expect(page.current_path).to eq(article_path(@article.id))
	end
	
	scenario "A user fails to updates an article" do
		visit "/"
		
		click_link @article.title
		
		click_link "Edit this article"
		
		fill_in "Title", with: ""
		fill_in "Body", with: "Updated body"
		
		click_button "Save Update"
		
		expect(page).to have_content("Article has not been updated")
		expect(page.current_path).to eq(article_path(@article.id))
	end

end