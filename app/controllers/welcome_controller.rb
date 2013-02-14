class WelcomeController < ApplicationController
  def index
    @articles = Article.all
    @sorts = Sort.all
    respond_to do |format|
      format.html
      format.json{ render json: @articles}
    end  
  end
end
