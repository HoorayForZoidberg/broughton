class Comment < ApplicationRecord
  belongs_to :issue
  belongs_to :user

  validates :content, presence: true
end
