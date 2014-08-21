module ApplicationHelper
   # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Word Focus Chapel, Laurel, MD"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  
  def admins_only(&block)
    block.call if current_user.try(:admin?)
  end
end
