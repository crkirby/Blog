require 'rails_helper'

RSpec.describe "Articles" , type: :request do
	
	before do
		@article = Article.create(title:"Testing testing", body:"testing body body")
	end
	
	describe 'GET /articles/:id' do
		context "With existing article" do
			before {get "/articles/#{@article.id}"}
			
			it "handles existing article" do
				expect(response.status).to eq(200)
			end
		end
			
			context "with non-existing article" do
				before {get "/articles/xxxx"}
				
				it "handles nonexisting article" do
					expect(response.status).to eq(302)
					flash_message = "Article not found."
					expect(flash[:alert]).to eq(flash_message)
				end
			end
			
		end
end