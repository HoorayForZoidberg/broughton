class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @issue = Issue.find(params[:issue_id])
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @issue = Issue.find(params[:issue_id])
    @comment.issue = @issue
    if @comment.save
      redirect_to residents_path, notice: "Your comment has been added"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
