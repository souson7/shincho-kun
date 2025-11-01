class Project < ApplicationRecord
  belongs_to :user
  has_many :assignments, dependent: :destroy
  has_many :assigned_users, through: :assignments, source: :user
  has_many :comments, dependent: :destroy
end
