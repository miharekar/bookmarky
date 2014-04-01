class SitesController < ApplicationController
  def index
    @sites = Site.includes(:bookmarks)
  end
end
