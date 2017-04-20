class Experiment < ApplicationRecord
  validates_presence_of :title, :summary

  has_and_belongs_to_many :users

  def owner
    self.users.find_by(role: "owner")
  end

  def staff
    self.users.where(role: "staff")
  end
end
