class DirectorMovie < ActiveRecord::Base
  belongs_to :movie
  belongs_to :cast
end
