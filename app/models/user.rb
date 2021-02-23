# frozen_string_literal: true

class User < ApplicationRecord
  include Clearance::User

  has_many :market_places
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
end
