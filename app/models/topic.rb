class Topic < ActiveRecord::Base
  validates :title, presence: true
  has_many :scriptures, dependent: :nullify
#  attr_accessible :title, :tag_list
  acts_as_taggable
end
