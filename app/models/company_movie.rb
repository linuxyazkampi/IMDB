class CompanyMovie < ActiveRecord::Base
  belongs_to :company
  belongs_to :movie
end
