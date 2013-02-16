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
   @articles = Article.find(:all, :conditions => { :sort => params[:id] })
   @sorts = Sort.all
   if @articles.empty?
      redirect_to :action =>'empty'
   else
      @articles
   end
  end
 
  def empty
    @sorts = Sort.all
  end
end
