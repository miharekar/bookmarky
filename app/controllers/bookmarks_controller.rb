class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      raise @bookmark
    else
      redirect_to :root, alert: "URL can't be blank"
    end
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:url, :tag_list)
  end
end
