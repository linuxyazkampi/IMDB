class ActorMovie < ActiveRecord::Base
  belongs_to :movie
  belongs_to :cast
end
