class Gist < ActiveRecord::Base
  ####################
  #   RELATIONS      #
  ####################
  belongs_to :user
  has_many   :file_lists, dependent: :destroy
  has_many   :comments, dependent: :destroy

  accepts_nested_attributes_for :file_lists, reject_if: :all_blank, allow_destroy: true
end
