class WelcomeController < ApplicationController
  def index
    @articles = Article.all
    @sorts = Sort.all
    respond_to do |format|
      format.html
      format.json{ render json: @articles}
    end  
  end
  
  def partshow
    @article = Article.all
    @sort = Sort.find(params[:id])
    @article.each do |article|
      while article.sort==@sort.name 
        @articles=Array.new
        @articles.push(article)
      end
    end
  end
end
