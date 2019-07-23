class LocationSerializer < ActiveModel::Serializer
  attributes :id, :country, :city, :attraction, :cuisine, :description
end
