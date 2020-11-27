module ApplicationHelper
  def category_picture(service)
    if service.type_of_service.strip.downcase == "marketing"
      "Marketing.jpg"
    elsif service.type_of_service.strip.downcase == "production"
      "Production.jpg"
    elsif service.type_of_service.strip.downcase == "creative coaching"
      "Creative_coaching.jpg"
    elsif service.type_of_service.strip.downcase == "social media management"
      "Social_media_management.jpg"
    elsif service.type_of_service.strip.downcase == "pr and playlisting"
      "Pr_and_playlisting.jpg"
    elsif service.type_of_service.strip.downcase == "legal & administrative advising"
      "Legal_and_ad.jpg"
    end
  end
end
