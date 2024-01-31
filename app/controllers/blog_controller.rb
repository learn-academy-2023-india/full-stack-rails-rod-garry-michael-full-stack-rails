class BlogController < ApplicationController
    def index 
        @blog_list = Blog.all
    end 
end
