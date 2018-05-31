class Issue < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :title, :body, :start_date, presence: true
  validates_inclusion_of :is_resolved, in: [true, false]
end
