class Scripture < ActiveRecord::Base
  validates :chapterverse, :text, presence: true
  belongs_to :topic
  belongs_to :user
  acts_as_taggable
end
