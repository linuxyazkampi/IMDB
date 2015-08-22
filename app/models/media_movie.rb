class MediaMovie < ActiveRecord::Base
  belongs_to :media
  belongs_to :movie
end
