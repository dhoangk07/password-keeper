class Password < ApplicationRecord
  belongs_to :user
  validates :pass, :app,  presence: true
  validates :app, uniqueness: true
end
