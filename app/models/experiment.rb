class Experiment < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :comments

  validates_presence_of :title, :summary, :staff_needed


  def owner
    self.users.find_by(role: "owner")
  end

  def staff
    self.users.where(role: "staff")
  end
end
