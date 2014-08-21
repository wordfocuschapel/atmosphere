class Scripture < ActiveRecord::Base
  validates :chapterverse, :text, presence: true
  belongs_to :topic
#  attr_accessible :text, :chapterverse, :tag_list
  acts_as_taggable
end
