class HomeController < ApplicationController
  def index
    @bookmark = Bookmark.new
  end

  def tags
    tags = ActsAsTaggableOn::Tag.where('name like ?', "%#{params[:q]}%")
    render json: tags.map{ |t| { value: t.name } }
  end
end
