class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat

  scope :all_by_user, -> (user) { where(user: user) }
end
