class Media < ActiveRecord::Base
  has_many :media_movies
  has_many :cast_medias
  has_many :movies, through: :media_movies
  has_many :casts, through: :cast_medias
end
