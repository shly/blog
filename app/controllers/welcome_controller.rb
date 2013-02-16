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
#   @sort = Sort.find(params[:id])
   @articles = Article.find(:all, :conditions => { :sort => params[:id] })
   @sorts = Sort.all
  end
end
