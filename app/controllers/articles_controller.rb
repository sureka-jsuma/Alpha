class ArticlesController < ApplicationController

    def index
        @articles=Article.all
    end

    def show
        # byebug
        @article=Article.find(params[:id])
    end

    def new
        #navigates to a page to fill the title and description. for temple
    end

    def create
        render plain: params[:article] #{"title"=>"12344555", "description"=>""}
        # @article=Article.new(params)
        # @article.save
    end

end
