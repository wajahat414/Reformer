class User < ApplicationRecord
  validates :username, :password, :email, presence: true
  validates :password, length: { in: 6..20 }
  validates :username, length: { in: 6..20 }
  validates :email, uniqueness: true
  validates :username, uniqueness: true
end
