class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.string :title
      t.text :body
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
