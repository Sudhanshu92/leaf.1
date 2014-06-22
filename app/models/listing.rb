class Listing < ActiveRecord::Base
  belongs_to :hospital
  validates_formatting_of :link, using: :url
end
