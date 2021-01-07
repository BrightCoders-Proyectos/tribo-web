class User < ApplicationRecord
  include Clearance::User

  validates :name, presence: true, uniqueness: true
end
