class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to :sites, notice: 'Bookmark successfully added'
    else
      redirect_to :root, alert: "URL can't be blank"
    end
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:url, :tag_list)
  end
end
