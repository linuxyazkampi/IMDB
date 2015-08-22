class Company < ActiveRecord::Base
  has_many :company_movies
  has_many :movies, through: :company_movies
end
