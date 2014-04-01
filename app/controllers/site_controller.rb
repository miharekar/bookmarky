class SiteController < ApplicationController
  def index
    @sites = Site.includes(:bookmarks)
  end
end
