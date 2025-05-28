class Profile < ApplicationRecord
  belongs_to :user

  validates :first_name, :last_name, presence: true
  validates :nickname, presence: true, uniqueness: true
  validates :balance, presence: true, numericality: { greater_than_or_equal_to: 0 }

  # Maybe add a method for display name flexibility
  def display_name
    nickname.present? ? nickname : "#{first_name} #{last_name}"
  end
end
