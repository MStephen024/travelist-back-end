# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

Location.transaction do
  CSV.foreach(Rails.root + 'data/location.csv',
              headers: true,
              header_converters: ->(h) { h.downcase.to_sym }) do |location_row|
    location = location_row.to_hash
    Location.create location unless Location.exists? location
  end
end
