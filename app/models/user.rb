class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ####################
  #   RELATIONS      #
  ####################
  has_many   :gists
  has_many   :comments, dependent: :destroy
end
