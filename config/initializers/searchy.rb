module Searchy
  def searchy_fields(*fields)
    @query = fields.map{|s| "#{s} ILIKE :q"}.join(' OR ')
  end

  def searchy(search_query)
    where(@query, { q: "%#{search_query}%" })
  end
end

ActiveRecord::Base.extend Searchy
