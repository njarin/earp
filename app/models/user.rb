class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :role, presence: true
  has_secure_password

  has_and_belongs_to_many :experiments
end
