class CommentsController < ApplicationController
  #http_basic_authenticate_with name: "arnaud", password: "secret", only: :destroy
  def create
    @article = Article.find(params[:article_id])

    @comments = @article.comments.create(comment_params)
    authorize @comments
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    authorize @comment
    @comment.destroy
    redirect_to article_path(@article)
  end
  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
