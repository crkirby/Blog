require "rails_helper"

RSpec.feature "Show an article" do
	
	before do
		@article = Article.create(title: "The first title" , body: "body body toeoroemroe")
	end
	
	scenario "A user wants a specific article" do
		visit "/"
		
		click_link @article.title
		
		expect(page).to have_content(@article.title)
		expect(page).to have_content(@article.body)
		expect(page.current_path).to eq(article_path(@article))
		
		expect(page).to have_link("See all articles")
		
	end
	
	
end