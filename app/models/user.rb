class User < ApplicationRecord
  include Clearance::User

  has_many :market_places
  validates :name, presence: true, uniqueness: true
end
