module BookmarksHelper
  def show_detail(detail)
    if detail.present?
      detail
    else
      'none'
    end
  end
end
