class Scripture < ActiveRecord::Base
  validates :chapterverse, :text, presence: true

  belongs_to :topic
end
