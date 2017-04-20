class Experiment < ApplicationRecord
  validates_presence_of :title, :summary, :owner_id

  belongs_to :owner, class_name: 'User', foreign_key: :owner_id

  belongs_to :staff_members, class_name: 'User'
  has_many :staff_members, foreign_key: :staff_member_id
end
