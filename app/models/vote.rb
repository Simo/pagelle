class Vote < ActiveRecord::Base
  attr_accessible :list_id, :voto, :note, :motivo, :level_id
  belongs_to :list
  belongs_to :level
end
