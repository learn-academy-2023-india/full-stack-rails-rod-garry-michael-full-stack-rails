class BlogController < ApplicationController
    def index 
        @blog_list = Blog.all
    end 
    
    def show 
        @blog_post = Blog.find(params[:id])
    end 

    def new
        @blog_new = Blog.new
    end 

    def create
        @blog_new = Blog.create(blog_params)
        if @blog_new.valid?
          flash[:success] = "Blog successfully created!"
          redirect_to blogs_path
        else
            flash.now[:error] = "Failed to create blog."
        end
    end
    private

    def blog_params
        params.require(:blog).permit(:title, :content)
    end
end

