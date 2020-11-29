class Tweet < ApplicationRecord
  validates :text, presence: true

  belongs_to :user
  has_many :comment

  def self.search(search)
    return Tweet.all unless search
    Tweet.where('text LIKE(?)', "%#{keyword}%")
  end
end