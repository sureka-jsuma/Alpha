class ArticlesController < ApplicationController

    before_action :set_article, only: [:show, :edit, :update, :destroy]

    def index
        @articles=Article.all
    end

    def show
        # byebug
    end

    def new
        @article=Article.new
        #navigates to a page to fill the title and description. for template
    end

    def create
        # render plain: params[:article] #{"title"=>"12344555", "description"=>""}
        @article=Article.new(set_params)
        if @article.save
          flash[:notice]="Article saved successfully"
          # redirect_to article_path(@article) or
          redirect_to @article
        else
            render 'new'
        end       
    end

    def edit        
    end

    def update         
        if @article.update(set_params)
        # render plain: @article.inspect
        flash[:notice]="Article updated successfully"
        # redirect_to article_path(@article) or
        redirect_to @article
        else
            render 'edit'
        end
    end

    def destroy       
        @article.destroy
        redirect_to articles_path
    end

    private

    def set_article
        @article=Article.find(params[:id])
    end

    def set_params
        params.require(:article).permit(:title,:description)
    end
end
