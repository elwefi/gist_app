class Comment < ActiveRecord::Base
  ####################
  #   RELATIONS      #
  ####################
  belongs_to :gist
  belongs_to :user
end
