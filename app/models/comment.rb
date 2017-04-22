class Comment < ApplicationRecord
  belongs_to :experiment
  belongs_to :user

  validates_presence_of :content, :experiment_id, :user_id

  def username
    self.user.name
  end
end
