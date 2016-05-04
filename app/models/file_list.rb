class FileList < ActiveRecord::Base
  ####################
  #   RELATIONS      #
  ####################
  belongs_to :gist

  ####################
  #      SCOPE       #
  ####################
  scope :by_name, ->(name) { where("name like ?", "%#{name}%")}

end
