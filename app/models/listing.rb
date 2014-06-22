class Listing < ActiveRecord::Base
  belongs_to :hospital
  validates_formatting_of :link, using: :url
  acts_as_votable 
end
