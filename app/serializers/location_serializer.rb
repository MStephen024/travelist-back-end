# frozen_string_literal: true

class LocationSerializer < ActiveModel::Serializer
  attributes :id, :country, :city, :attraction, :cuisine, :description,
             :editable

  belongs_to :user

  def editable
    scope == object.user
  end
end
