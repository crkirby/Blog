require 'rails_helper'

RSpec.feature "Deleting an article" do 
	
	before do
		@article = Article.create(title:"fdksl", body:"sfkjsfk")
	end
	scenario "A user deletes a article" do
		visit "/"

		click_link @article.title

		click_link "Delete Article"

		expect(page).to have_content("Article deleted successfully")
		expect(page.current_path).to eq(articles_path)
	end
end