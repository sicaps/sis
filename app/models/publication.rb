class Publication < ActiveRecord::Base
  attr_accessible :typublication_id, :numpublication, :titrepublication, :description, :fichier
  has_attached_file :fichier
  #validates_attachment :description

end
