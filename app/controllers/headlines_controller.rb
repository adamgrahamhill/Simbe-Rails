class HeadlinesController < ApplicationController
	before_action :set_headline, only: [ :show, :edit, :update, :destroy]
	before_filter :authorize

	def index
		@headlines = Headline.all
	end

	def new
		@headline = Headline.new
	end

	def create
		@headline = Headline.create(headline_params)
		if @headline.save
			redirect_to headlines_path,
						notice: "Headline was created"
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @headline.update(headline_params)
			redirect_to @headline, notice: 'Update successful'
		else
			render :edit
		end
	end

	def destroy
		@headline = Headline.find(params[:id])
		@headline.destroy
		redirect_to headlines_path
	end

	# def select
	# 	@unselect = Headline.all
	# 	@unselect.each do |headline|
	# 		headline.selected = false
	# 		headline.save
	# 	end
	# 	@headline.selected = true
	# 	@headline.save
	# 	render :index
	# end

	private

	def set_headline
		@headline = Headline.find(params[:id])
	end

	def headline_params
		params.require(:headline).permit(:text, :selected)
	end
end
