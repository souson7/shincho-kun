class User < ApplicationRecord
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
    validates :name, presence: true
    has_many :projects, dependent: :destroy
    has_many :assignments, dependent: :destroy
    has_many :comments, dependent: :destroy
    enum role: { user: 0, admin: 1 }
end