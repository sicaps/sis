class AddAttachmentFichierToPublications < ActiveRecord::Migration
  def self.up
    change_table :publications do |t|
      t.attachment :fichier
    end
  end

  def self.down
    drop_attached_file :publications, :fichier
  end
end
