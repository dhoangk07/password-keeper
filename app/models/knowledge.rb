class Knowledge < ApplicationRecord
  belongs_to :user
  validates :content, :title,  presence: true
  validates :content, :title, uniqueness: true
end
