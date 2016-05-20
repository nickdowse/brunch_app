class Review < ActiveRecord::Base

  belongs_to :brunch
  # belongs_to :user

  validate :validate_rating

  def validate_rating
    if rating < 0 || rating > 5
      errors.add(:rating, "Sorry, a rating must be between 0 and 5 (inclusive), your rating is off the chart!")
    else
      return true
    end
  end

end
