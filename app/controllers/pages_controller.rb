class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def residents
    @issues = Issue.all
    @current_issues = @issues.where("is_resolved = ?", "false")
    @past_issues = @issues.where("is_resolved = ?", "true")
  end
end
