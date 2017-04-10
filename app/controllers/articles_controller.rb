class ArticlesController < ApplicationController

    def new 
        @article = Article.new  
    end
    
    def create
        @article = Article.new(article_params)
        
        # defaults
        @article.language_code = 'zh-s'
        @article.content_type = 'blog'
        @article.difficulty_level = 0
        @article.word_count = 100
        
        if @article.save
            flash[:notice] = "Article was successfully created"
            redirect_to article_path(@article)
        else
            
            
            
            render 'new' 
        end
    end
  
    def show
        @article = Article.find(params[:id])    
    
    
    end
    
    private
    def article_params
       params.require(:article).permit(:title, :description) 
    end
end