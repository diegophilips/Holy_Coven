module ApplicationHelper
  def category_picture(service)
    if service.type_of_service.strip.downcase == "marketing"
      "Marketing.jpg"
    elsif service.type_of_service.strip.downcase == "production"
      "production.jpg"
    elsif service.type_of_service.strip.downcase == "creative coaching"
      "creative.jpg"
    elsif service.type_of_service.strip.downcase == "social media management"
      "social.jpg"
    elsif service.type_of_service.strip.downcase == "pr and playlisting"
      "pr.jpg"
    elsif service.type_of_service.strip.downcase == "legal & administrative advising"
      "legal.jpg"
    end
  end
end
