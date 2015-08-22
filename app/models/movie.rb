class Movie < ActiveRecord::Base
  has_many :director_movies
  has_many :actor_movies
  has_many :category_movies
  has_many :movie_writers
  has_many :media_movies
  has_many :company_movies
  has_many :contents #Type a gore View de gorunum degisecekse has_many olacaktir misal SSS ise asagi detail ise yukari gibi
  has_many :comments #Movie_id ler Comments tablosunda tutular duz iliski ile
  has_many :medias, through: :media_movies
  has_many :directors, through: :director_movies, source: :cast
  has_many :actors, through: :actor_movies, source: :cast
  has_many :categories, through: :category_movies
  has_many :writers, through: :movie_writers, source: :cast
  has_many :companies, through: :company_movies
end
