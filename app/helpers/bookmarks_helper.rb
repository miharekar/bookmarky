module BookmarksHelper
  def show_detail(detail)
    if detail.present?
      detail
    else
      'none'
    end
  end

  def render_tags(tags)
    tags.map do |tag|
      link_to tag, tagged_bookmarks_path(tag: tag)
    end.join(', ').html_safe
  end
end
