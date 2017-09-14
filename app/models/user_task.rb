class UserTask < ApplicationRecord
  validates :user, presence: true
  validates_uniqueness_of :task, scope: :user_id, presence: true

  belongs_to :user
  belongs_to :task
end
