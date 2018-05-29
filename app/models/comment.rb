class Comment < ApplicationRecord
  belongs_to :issue
  belongs_to :user

  validate :content, presence: true
end
