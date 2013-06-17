class Section < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name, :position, :visible, :content_type, :content
  belongs_to :page

end
