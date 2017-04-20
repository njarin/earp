class Experiment < ApplicationRecord
  validates_presence_of :title, :summary

  has_and_belongs_to_many :users
end
