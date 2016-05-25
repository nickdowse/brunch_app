class Brunch < ActiveRecord::Base

  has_many :reviews
  # belongs_to :user

  def average_rating
    ratings = self.reviews.map { |r| r.rating }
    sum = ratings.sum
    number_of_items = ratings.length
    result = (sum / number_of_items.to_f).round(1)
    return result
  end

end
