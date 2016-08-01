class StaticController < ApplicationController
	before_filter :authorize, only: [:admin_index]
	def admin_index
	end
	def landing_page
		@selected_headline = Headline.where(selected: true).first || Headline.new(text: "Your title here")
		@selected_image = Image.where(selected: true).first

		@blog_posts = BlogPost.where(selected: true)
		@post_one = @blog_posts.first || BlogPost.new(title: 'example post', date: 'Jan/1/2020')
		@post_two = @blog_posts[1] || BlogPost.new(title: 'example post', date: 'Jan/2/2020')
		@post_three = @blog_posts[2] || BlogPost.new(title: 'example post', date: 'Jan/3/2020')

		@images = Image.where(selected: true)
		if @images.first
			@selected_image = @images.first.screen_cap
		else
			@selected_image = "http://www.davidlai.me/wp-content/uploads/2011/09/6a01310fb8e76f970c01310fbda40f970c.png"
		end 
	end
end
