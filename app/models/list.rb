class List < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy

  validates :title, length: { minimum: 1 }, presence: true
  validates :user, presence: true
end
