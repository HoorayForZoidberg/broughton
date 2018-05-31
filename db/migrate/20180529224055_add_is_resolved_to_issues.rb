class AddIsResolvedToIssues < ActiveRecord::Migration[5.1]
  def change
    add_column :issues, :is_resolved, :boolean
  end
end
