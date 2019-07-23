class LocationSerializer < ActiveModel::Serializer
  attributes :id, :country, :city, :season, :attraction, :cuisine, :description
end
