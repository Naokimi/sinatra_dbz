class Character < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :user, presence: true, uniqueness: true
  validates :team, presence: true, inclusion: { in: %w[A B] }
end
