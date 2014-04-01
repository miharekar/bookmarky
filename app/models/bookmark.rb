require 'open-uri'
class Bookmark < ActiveRecord::Base
  TINY_URL_API = 'http://tinyurl.com/api-create.php?url='

  belongs_to :site
  validates :url, presence: true
  acts_as_taggable

  before_save :set_site
  before_save :shorten_url, :get_metadata # This should be run in background

  def set_site
    self.site = Site.find_or_create_by(domain: domain)
  end

  def shorten_url
    self.short_url = get_short_url
  end

  private
  def domain
    URI.parse(url).host
  end

  def get_short_url
    open(TINY_URL_API + url).read
  end

  def get_metadata
    meta = MetaInspector.new(url)
    self.title = meta.title.truncate(250, separator: /\s/)
    self.keywords = meta.meta['keywords']
    self.description = meta.meta['description']
  end
end
