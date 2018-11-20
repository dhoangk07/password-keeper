class Password < ApplicationRecord
  belongs_to :user
  validates :pass, presence: true
  validates :app, presence: true
end
