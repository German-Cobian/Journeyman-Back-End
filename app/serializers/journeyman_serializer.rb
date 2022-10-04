class JourneymanSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :skill, :country, :city, :price, :image_url
end
