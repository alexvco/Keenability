module ApplicationHelper

  def is_active?(link_path)
   current_page?(link_path) ? "active" : ""
  end

  def is_portfolio_active?
      array = ["/welcome/portfolio1col", "/welcome/portfolio2col", "/welcome/portfolio3col", "/welcome/portfolio4col", "/welcome/portfolioitem"]
      array.each do |path|
      if current_page?(path)
        return "dropdown active"
      else
        "dropdown"
      end
    end
  end

  def is_blog_active?
      array = ['/welcome/bloghome1', '/welcome/bloghome2', '/welcome/blogpost']
      array.each do |path|
      if current_page?(path)
        return "dropdown active"
      else
        "dropdown"
      end
    end
  end

  def is_otherpages_active?
      array = ['/welcome/fullwidth', '/welcome/sidebar', '/welcome/faq', '/welcome/p404', '/welcome/pricing']
      array.each do |path|
      if current_page?(path)
        return "dropdown active"
      else
        "dropdown"
      end
    end
  end

  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type] || flash_type.to_s
  end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} fade in") do 
              concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
              concat message 
            end)
    end
    nil
  end

end
