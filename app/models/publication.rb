class Publication < ActiveRecord::Base
  attr_accessible :typublication_id, :numpublication, :titrepublication, :description, :fichier
  has_attached_file :fichier,
                    :url => '/assets/reports/:basename.:extension',
                    :path => ':rails-root/public/assets/reports/:basename.:extension'

  #validates_attachment :description

end
