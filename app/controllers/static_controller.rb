class StaticController < ApplicationController
	def admin_index
	end
	def landing_page
		@selected_headline = Headline.where(selected: true).first || Headline.new(text: "Your title here")
		@selected_image = Image.where(selected: true).first

		@blog_posts = BlogPost.where(selected: true)
		@post_one = @blog_posts.first || BlogPost.new(title: 'a real post', date: 'Jan/1/2020')
		@post_two = @blog_posts[1] || BlogPost.new(title: 'a real post', date: 'Jan/2/2020')
		@post_three = @blog_posts[2] || BlogPost.new(title: 'a real post', date: 'Jan/3/2020')

		 
	end
end
