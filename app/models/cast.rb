class Cast < ActiveRecord::Base
  has_many :director_movies
  has_many :actor_movies
  has_many :movie_writers
  has_many :cast_medias
  has_many :movies_directed, through: :director_movies, source: :movie #Movie tablosunda arama yapar
  has_many :movies_acted, through: :actor_movies, source: :movie #Source tablosunda arama yapar
  has_many :movies_writed, through: :movie_writers, source: :movie #
  has_many :medias, through: :cast_medias
end
