# frozen_string_literal: true

module ToursHelper
  def get_tour_type(tour)
    if tour.tour_type =="1"
      return "一人で"
    elsif tour.tour_type =="2"
      return "友達と"
    elsif tour.tour_type =="3"
      return "恋人と"
    elsif tour.tour_type =="4"
      return "家族と"
    else
      return "だれとでも"
    end
  end
  def get_season(tour)
    if tour.season =="1"
      return "春"
    elsif tour.season =="2"
      return "夏"
    elsif tour.season =="3"
      return "秋"
    elsif tour.season =="4"
      return "冬"
    else
      return "いつでも"
    end
  end

end
