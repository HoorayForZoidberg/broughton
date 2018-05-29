class Issue < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, :body, :start_date, :is_resolved, presence: true
end
