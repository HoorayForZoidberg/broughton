class IssuesController < ApplicationController
  def index
    @issues = Issue.all
  end

  def new
    @issue = Issue.new
  end

  def create
    @issue = Issue.new(issue_params)
    @issue.user = current_user
    if @issue.save!
      redirect_to residents_path, notice: "Your issue has been added to the list"
    end
  end

  def edit
    @issue = Issue.find(params[:id])
  end

  def update
    @issue = Issue.find(params[:id])
    if @issue.update!(issue_params)
      redirect_to residents_path, notice: "Your issue has been updated"
    end
  end

  def delete
    @issue = Issue.find(params[:id])
    if @issue.destroy!
      redirect_to residents_path, notice: "Your issue has been deleted"
    end
  end

  private
  def issue_params
    params.require(:issue).permit(:title, :body, :start_date, :is_resolved, :end_date)
  end
end
