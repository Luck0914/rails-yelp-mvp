class ReviewController < ApplicationController
  belongs_to :Restaurant
  validates :content, :rating, presence: true
  validates :rating, lenght: {in: 0..5}
end
