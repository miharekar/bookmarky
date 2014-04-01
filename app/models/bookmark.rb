class Bookmark < ActiveRecord::Base
  belongs_to :site
  validates :url, presence: true
  acts_as_taggable

  before_save :set_site

  def set_site
    self.site = Site.find_or_create_by(domain: domain)
  end

  private
  def domain
    URI.parse(url).host
  end
end
