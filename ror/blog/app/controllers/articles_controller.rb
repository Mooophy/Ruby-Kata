class ArticlesController < ApplicationController
  def new
  end

  def create
    @article = Aticle.new(params[:article])

    @article.save
    redirect_to @article 
  end
end
