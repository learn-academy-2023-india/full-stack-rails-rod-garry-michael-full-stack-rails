class BlogController < ApplicationController
    def index 
        @blog_list = Blog.all
    end 
    
    def show 
        @blog_post = Blog.find(params[:id])
    end 

end
