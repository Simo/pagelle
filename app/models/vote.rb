class Vote < ActiveRecord::Base
  attr_accessible :list_id, :voto, :note, :motivo
  belongs_to :list
end
