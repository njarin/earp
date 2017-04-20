class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :role, presence: true
  has_secure_password

  has_many :owned_experiments, class_name: "Experiment", foreign_key: :owner_id

  has_many :staffed_experiments, foreign_key: :staffed_experiment_id
  belongs_to :staffed_experiments
end
