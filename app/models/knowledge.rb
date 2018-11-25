class Knowledge < ApplicationRecord
  belongs_to :user
  validates :content, :title, presence: true, uniqueness: true
end
