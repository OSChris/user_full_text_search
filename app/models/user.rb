class User < ActiveRecord::Base

  def self.full_search(search_term)
    where(["first_name LIKE ? OR last_name LIKE ? OR email LIKE ?", "%#{search_term}%", "%#{search_term}%", "%#{search_term}%"])
  end

end
