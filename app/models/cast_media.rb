class CastMedia < ActiveRecord::Base
  belongs_to :cast
  belongs_to :media
end
