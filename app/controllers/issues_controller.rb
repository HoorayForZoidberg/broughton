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
    @issue.save
  end

  def edit
    @issue = Issue.find(params[:id])
  end

  def update
    @issue = Issue.find(params[:id])
    @issue.update(issue_params)
  end

  def delete
    @issue = Issue.find(params[:id])
    @issue.destroy
  end

  private
  def issue_params
    require(:issue).permit(:title, :body, :start_date, :is_resolved, :end_date)
  end
end
