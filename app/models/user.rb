class User < ActiveRecord::Base

  def self.date_range(date1, date2)
    where(["created_at > ?", date1]).where("created_at < ?", date2) 
    ### Example date1 = 3.days.ago & date2 = 2.days.ago
  end

  def self.full_search(search_term)
    where(["first_name LIKE ? OR last_name LIKE ? OR email LIKE ?", "%#{search_term}%", "%#{search_term}%", "%#{search_term}%"])
  end

end
