class NewsItemSerializer < ActiveModel::Serializer
  attributes :title,
    :description,
    :primaryCategory,
    :url,
    :originalImageUrl,
    :thumbnail,
    :words
end