class Character < ActiveRecord::Base
  validates :name, presence: true
  validates :user, presence: true
  validates :team, presence: true, inclusion: { in: %w[A B] }
end
