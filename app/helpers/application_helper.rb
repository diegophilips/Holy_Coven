module ApplicationHelper
  def category_picture(service)
    if service.type_of_service.strip.downcase == "marketing"
      "Marketing.jpg"
    elsif service.type_of_service.strip.downcase == "production"
      "production.png"
    elsif service.type_of_service.strip.downcase == "creative coaching"
      "creative.png"
    elsif service.type_of_service.strip.downcase == "social media management"
      "social.png"
    elsif service.type_of_service.strip.downcase == "pr and playlisting"
      "pr.png"
    elsif service.type_of_service.strip.downcase == "legal & administrative advising"
      "legal.png"
    end
  end
end
