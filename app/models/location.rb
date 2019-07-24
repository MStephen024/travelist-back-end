# frozen_string_literal: true

class Location < ApplicationRecord
  belongs_to :user

  validates :text, :user, presence: true
end
