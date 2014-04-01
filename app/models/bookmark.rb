class Bookmark < ActiveRecord::Base
  belongs_to :site
  validates :url, presence: true
  acts_as_taggable
end
