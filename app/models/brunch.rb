class Brunch < ActiveRecord::Base

  has_many :reviews
  # belongs_to :user

  has_attached_file :avatar, :styles =>
    { :medium => "300x300>", :thumb => "100x100>" },
    :default_url => "/images/missing.png"
  validates_attachment_content_type :avatar,
    :content_type => /\Aimage\/.*\Z/

  def average_rating
    ratings = self.reviews.map { |r| r.rating }
    sum = ratings.sum
    number_of_items = ratings.length
    result = (sum / number_of_items.to_f).round(1)
    return result
  end

end
