class Post < ApplicationRecord
  belongs_to :cuisine
  belongs_to :food_prep
  belongs_to :user
  has_rich_text :description
  has_one_attached :image
end
