class List < ActiveRecord::Base
  attr_accessible :pubblicata
  has_many:votes
end
