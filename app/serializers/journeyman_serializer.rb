class JourneymanSerializer
  include JSONAPI::Serializer
  attributes :name, :skill, :country, :city, :price, :journeyman_pic, :image_url
end
