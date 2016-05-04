class Gist < ActiveRecord::Base
  ####################
  #   RELATIONS      #
  ####################
  belongs_to :user
  has_many   :file_lists, dependent: :destroy
  has_many   :comments, dependent: :destroy

  accepts_nested_attributes_for :file_lists, reject_if: :all_blank, allow_destroy: true

  scope :by_file_content, ->(content) { joins(:file_lists).where("file_lists.content like ?", "%#{content}%").uniq }

end
