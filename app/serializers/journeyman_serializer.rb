class JourneymanSerializer
  include JSONAPI::Serializer
  attributes :name, :skill, :country, :city, :price, :image_url
end
