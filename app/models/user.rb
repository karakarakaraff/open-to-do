class User < ApplicationRecord
  has_many :lists, dependent: :destroy

  validates :username,
            presence: true,
            length: { minimum: 1, maximum: 100 },
            uniqueness: { case_sensitive: false }
  validates :password,
            presence: true,
            length: { minimum: 6 }

  has_secure_password
end
