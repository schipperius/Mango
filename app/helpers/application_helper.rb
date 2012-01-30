module ApplicationHelper

    # Return a title on a per-page basis.
  def title
    base_title = "Book of Jack"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    image_tag("title.png", :alt => "Book of Jack", :class => "round")
  end

end
