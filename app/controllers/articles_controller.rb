class ArticlesController < ApplicationController

    def index
        @articles=Article.all
    end

    def show
        # byebug
        @article=Article.find(params[:id])
    end

    def new
        @article=Article.new
        #navigates to a page to fill the title and description. for temple
    end

    def create
        # render plain: params[:article] #{"title"=>"12344555", "description"=>""}
        @article=Article.new(params.require(:article).permit(:title,:description))
        if @article.save
          flash[:notice]="Article saved successfully"
          # redirect_to article_path(@article) or
          redirect_to @article
        else
            render 'new'
        end
        
    end

end
