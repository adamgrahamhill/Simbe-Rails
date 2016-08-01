class BlogPostsController < ApplicationController
	before_filter :authorize
	before_action :set_post, only: [:show, :edit, :update, :destroy]

	def index
		@posts = BlogPost.all
	end

	def new
		@post = BlogPost.new
	end

	def edit
	end

	def create
		@post = BlogPost.create(post_params)
		if @post.save
			redirect_to blog_posts_path,
			notice: "Headline was created"
		else
			render :new
		end
	end

	def update 
		if @post.update(post_params)
			redirect_to @post, notice: 'Update successful'
		else
			render :edit
		end
	end

	def destroy
		@post = BlogPost.find(params[:id])
		@post.destroy
		redirect_to blog_posts_path
	end

	private

	def set_post
		@post = BlogPost.find(params[:id])
	end

	def post_params
		params.require(:blog_post).permit(:title, :content, :date,  :selected)
	end
end
